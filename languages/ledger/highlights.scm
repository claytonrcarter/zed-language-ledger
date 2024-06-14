; Copied from https://github.com/nvim-treesitter/nvim-treesitter/blob/master/queries/ledger/highlights.scm

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
] @markup.raw

(payee) @variable
(account) @variable
; need to assign a capture for "Go To Definition" to work
(filename) @type

"include" @keyword.import

[
  "account"
  "alias"
  "assert"
  "check"
  "commodity"
  "comment"
  "def"
  "default"
  "end"
  "eval"
  "format"
  "nomarket"
  "note"
  "payee"
  "test"
  "A"
  "Y"
  "N"
  "D"
  "C"
  "P"
] @keyword
