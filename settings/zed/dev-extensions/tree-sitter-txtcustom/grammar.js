// Tree-sitter grammar for plain-text notes (.txt), ported from an earlier
// TextMate grammar. Flat token-soup grammar: every rule is a token;
// longest-match plus precedence reproduces the original regex behavior.
module.exports = grammar({
  name: 'txtcustom',

  extras: $ => [/\s/],

  rules: {
    document: $ => repeat(choice(
      $.fence,
      $.comment,
      $.backtick,
      $.string,
      $.key,
      $.flag,
      $.bracket,
      $.equals,
      $.text,
    )),

    // ``` fenced block, possibly multiline, rendered as one grey token
    fence: _ => token(prec(3, seq(
      '```',
      repeat(choice(/[^`]/, seq('`', /[^`]/), seq('``', /[^`]/))),
      '```',
    ))),

    // # comment to end of line
    comment: _ => token(prec(2, /#[^\n]*/)),

    // `inline code` (grey, like comments, per the VS Code token colors)
    backtick: _ => token(prec(2, /`[^`\n]*`/)),

    // "double quoted string"
    string: _ => token(prec(2, /"[^"\n]*"/)),

    // word immediately before `=` (includes the `=` — tree-sitter tokens
    // can't lookahead like the TextMate rule, so `=` shares the color)
    key: _ => token(prec(2, /[A-Za-z_][A-Za-z0-9_.\-]*[ \t]*=/)),

    // --flag / -f
    flag: _ => token(prec(2, /--?[A-Za-z][A-Za-z0-9-]*/)),

    bracket: _ => token(prec(2, /[(){}\[\]]/)),

    equals: _ => token(prec(1, '=')),

    // any other run of characters, lowest priority
    text: _ => token(prec(-1, /[^\s#`"(){}\[\]=]+/)),
  },
});
