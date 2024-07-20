// provideHover.cjs

// Note: we could also use typescript and actually transpile this file
// here we use type annotations in a plain js module!
/** @typedef{ import('vscode') } vscode */

/**
 * we can only use ts annotations here unfortunately
 * if you want actual ts you need to compile this file yourself from ts
 * @param vscode {vscode}
 * @param document {vscode.TextDocument}
 * @param position {vscode.Position}
 * @param out {vscode.OutputChannel}
 * @param token {vscode.CancellationToken}
 * @return {Promise<vscode.Hover>}
 */
function provideHover(vscode, document, position, token) {
  // get word from the document at the hovered location
  const range = document.getWordRangeAtPosition(position);
  const word = document.getText(range);

  // generate something to display
  const markdown = new vscode.MarkdownString(
    `
__This is a custom Hover Panel!__

It takes markdown an can be used to provide custom data.

* Current hovered word is: \`\`\`${word}\`\`\`
* Current Position is: line ${position.line}, pos ${position.character}
`,
    true
  );
  markdown.isTrusted = true;
  return new vscode.Hover(markdown);
}

module.exports = {  };