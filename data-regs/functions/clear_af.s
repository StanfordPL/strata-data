  .text
  .globl clear_af
  .type clear_af, @function
#! maybe-read { }
#! maybe-write { %af }
#! must-undef { %r15 }
.clear_af:
  # ----------------------------------------------------------------------------
  # clear the af flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  andq $0xffffffef, %r15
  pushq %r15
  popfq
  retq

.size clear_af, .-clear_af
  retq
