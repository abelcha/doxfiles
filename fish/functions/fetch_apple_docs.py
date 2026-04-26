#!/usr/bin/env -S uv run --script
#
# /// script
# requires-python = ">=3.12"
# dependencies = ["httpx", "tqdm"]
# ///

import asyncio
import httpx
import json
import sys
import os
from typing import Dict, Any, List, Set, Optional
from urllib.parse import urlparse
import re

class AppleDocFetcher:
    BASE_DOC_URL = "https://developer.apple.com/documentation/"
    DATA_URL_TEMPLATE = "https://developer.apple.com/tutorials/data/documentation/{path}.json"

    def __init__(self, output_dir: str = "apple_docs"):
        self.output_dir = output_dir
        self.visited: Set[str] = set()
        self.client = httpx.AsyncClient(timeout=30.0, follow_redirects=True)
        
        if not os.path.exists(self.output_dir):
            os.makedirs(self.output_dir)

    async def close(self):
        await self.client.aclose()

    def get_data_url(self, doc_url: str) -> str:
        parsed = urlparse(doc_url)
        path = parsed.path.strip("/")
        if path.startswith("documentation/"):
            clean_path = path[len("documentation/"):]
        else:
            clean_path = path
        return self.DATA_URL_TEMPLATE.format(path=clean_path)

    def normalize_url(self, url: str) -> str:
        if url.startswith("/"):
            return "https://developer.apple.com" + url
        return url

    def get_filename_from_url(self, url: str) -> str:
        parsed = urlparse(url)
        path = parsed.path.strip("/")
        # Remove 'documentation/' prefix
        if path.startswith("documentation/"):
            path = path[len("documentation/"):]
        
        filename = path.replace("/", "_") + ".md"
        return os.path.join(self.output_dir, filename)

    async def fetch_json(self, url: str) -> Optional[Dict[str, Any]]:
        data_url = self.get_data_url(url)
        try:
            resp = await self.client.get(data_url)
            if resp.status_code == 200:
                return resp.json()
            else:
                return None
        except Exception as e:
            print(f"Error fetching {url}: {e}")
            return None

    def parse_inline_content(self, inline_content: List[Dict[str, Any]], references: Dict[str, Any]) -> str:
        text = ""
        for item in inline_content:
            item_type = item.get("type")
            if item_type == "text":
                text += item.get("text", "")
            elif item_type == "reference":
                identifier = item.get("identifier")
                ref = references.get(identifier)
                if ref:
                    title = ref.get("title", identifier)
                    ref_url = ref.get("url")
                    if ref_url:
                        target = self.normalize_url(ref_url)
                        local_filename = os.path.basename(self.get_filename_from_url(target))
                        text += f"[{title}]({local_filename})"
                    else:
                        text += f"`{title}`"
                else:
                    text += f"`{identifier}`"
            elif item_type == "codeVoice":
                text += f"`{item.get('code', '')}`"
            elif item_type == "link":
                title = item.get("title", "link")
                target = item.get("destination", item.get("url", "#"))
                text += f"[{title}]({target})"
            else:
                 text += item.get("text", "")
        return text

    def parse_content_section(self, content: List[Dict[str, Any]], references: Dict[str, Any]) -> str:
        md = ""
        for item in content:
            item_type = item.get("type")
            if item_type == "paragraph":
                md += self.parse_inline_content(item.get("inlineContent", []), references) + "\n\n"
            elif item_type == "heading":
                level = item.get("level", 2)
                text = item.get("text", "")
                md += f"{'#' * level} {text}\n\n"
            elif item_type == "codeListing":
                syntax = item.get("syntax", "text")
                if syntax == "objc": syntax = "objective-c"
                code = "\n".join(item.get("code", []))
                md += f"```{syntax}\n{code}\n```\n\n"
            elif item_type in ["list", "unorderedList", "orderedList"]:
                 items = item.get("items", [])
                 for i, li in enumerate(items):
                     prefix = "- " if item_type != "orderedList" else f"{i+1}. "
                     if "content" in li:
                         md += prefix + self.parse_content_section(li.get("content", []), references).strip() + "\n"
                 md += "\n"
            elif item_type == "tabNavigator":
                tabs = item.get("tabs", [])
                for tab in tabs:
                    title = tab.get("title", "")
                    md += f"### {title}\n\n"
                    md += self.parse_content_section(tab.get("content", []), references)
        return md

    def convert_to_markdown(self, data: Dict[str, Any]) -> str:
        md = ""
        metadata = data.get("metadata", {})
        title = metadata.get("title", "Untitled")
        md += f"# {title}\n\n"

        abstract = data.get("abstract", [])
        if abstract:
            abstract_text = ""
            for item in abstract:
                if item.get("type") == "text":
                    abstract_text += item.get("text", "")
            if abstract_text:
                md += f"**{abstract_text}**\n\n"

        primary = data.get("primaryContentSections", [])
        references = data.get("references", {})

        for section in primary:
            if section.get("kind") == "content":
                md += self.parse_content_section(section.get("content", []), references)
        
        return md

    async def save_page(self, url: str, content: str):
        filename = self.get_filename_from_url(url)
        try:
            with open(filename, "w") as f:
                f.write(content)
        except Exception as e:
            print(f"Error saving {filename}: {e}")

    async def process_url(self, url: str) -> Optional[List[str]]:
        if url in self.visited:
            return None
        self.visited.add(url)
        
        data = await self.fetch_json(url)
        if not data:
            return None
            
        markdown = self.convert_to_markdown(data)
        await self.save_page(url, markdown)
        
        children = []
        topic_sections = data.get("topicSections", [])
        references = data.get("references", {})
        
        for section in topic_sections:
            identifiers = section.get("identifiers", [])
            for ident in identifiers:
                ref = references.get(ident)
                if ref and ref.get("url"):
                    child_url = self.normalize_url(ref.get("url"))
                    children.append(child_url)
        return children

    async def crawl(self, start_url: str):
        print(f"Fetching root: {start_url}")
        children = await self.process_url(start_url)
        
        if children:
            print(f"Fetching {len(children)} sub-pages...")
            tasks = []
            for child in children:
                if child not in self.visited:
                    tasks.append(self.process_url(child))
            
            if tasks:
                await asyncio.gather(*tasks)

async def main():
    if len(sys.argv) < 2:
        print("Usage: fetch_apple_docs.py <url> [output_dir]")
        sys.exit(1)
        
    url = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else "apple_docs"
    
    fetcher = AppleDocFetcher(output_dir=output_dir)
    try:
        await fetcher.crawl(url)
        print(f"All files saved to {output_dir}/")
    finally:
        await fetcher.close()

if __name__ == "__main__":
    asyncio.run(main())
