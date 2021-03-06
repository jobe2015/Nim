discard """
  errormsg: "type mismatch: got (string) but expected 'ptr'"
  line: 20
  disabled: true
"""

import typetraits

type
  Vec[N: static[int]; T] = distinct array[N, T]

var x = Vec([1, 2, 3])

static:
  assert x.type.name == "Vec[static[int](3), int]"

var str1: string = "hello, world!"
var ptr1: ptr = addr(str1)

var str2: string = "hello, world!"
var ptr2: ptr = str2

