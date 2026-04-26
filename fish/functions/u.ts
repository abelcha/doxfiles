#!/usr/bin/env bun
import Bun from "bun";
import TurndownService from "turndown";
const turndownService = new TurndownService({
  linkReferenceStyle: "collapsed",
  blankReplacement: (content, node) => {
    if (node.nodeName === "BR") {
      return "\n";
    }
    return "";
  },
});

export const main = async () => {
  const uri = Bun.argv.pop();
  // console.log({ uri });
  await using view = new Bun.WebView({
    width: 800,
    height: 600,
  });
  await view.navigate(uri);
  console.log(uri);
  console.log('---------')
  // const content = await view.evaluate(`document.documentElement.innerHTML`);
  await Bun.sleep(250);
  const content = await view.evaluate(`document.body.children?.[0].innerHTML`);
  // console.log(content);
  const markdown = turndownService.turndown(content);
  const out = Bun.markdown.ansi(markdown);
  process.stdout.write(out);
};
main();
