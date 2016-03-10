  .text
  .globl clear_of
  .type clear_of, @function
#! maybe-read { }
#! maybe-write { %of }
#! must-undef { %r15 }
.clear_of:
  # ----------------------------------------------------------------------------
  # clear the of flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  andq $0xfffff7ff, %r15
  pushq %r15
  popfq
  retq

.size clear_of, .-clear_of
  retq
