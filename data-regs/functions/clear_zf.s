  .text
  .globl clear_zf
  .type clear_zf, @function
#! maybe-read { }
#! maybe-write { %zf }
#! must-undef { %r15 }
.clear_zf:
  # ----------------------------------------------------------------------------
  # clear the zf flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  andq $0xffffffbf, %r15
  pushq %r15
  popfq
  retq

.size clear_zf, .-clear_zf
  retq
