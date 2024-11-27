; Adapted from from https://github.com/nvim-treesitter/nvim-treesitter/blob/master/queries/ledger/highlights.scm

[
  (block_comment)
  (comment)
  (note)
  (test)
] @comment

[
  (quantity)
  (negative_quantity)
] @number

[
  (date)
  (effective_date)
  (time)
  (interval)
] @string.special

[
  (commodity)
  (option)
  (option_value)
  (check_in)
  (check_out)
] @string.special.symbol

(payee) @variable
(account) @variable
(filename) @link_uri

(code) @number
(code
    "(" @punctuation.bracket
    ")" @punctuation.bracket
)

[
  "account"
  "alias"
  "assert"
  "check"
  "comment"
  "commodity"
  "def"
  "default"
  "end"
  "eval"
  "format"
  "include"
  "nomarket"
  "note"
  "payee"
  "tag"
  "test"
  "A"
  "C"
  "D"
  "N"
  "P"
  "Y"
] @keyword
