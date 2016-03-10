  .text
  .globl clear_pf
  .type clear_pf, @function
#! maybe-read { }
#! maybe-write { %pf }
#! must-undef { %r15 }
.clear_pf:
  # ----------------------------------------------------------------------------
  # clear the pf flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  andq $0xfffffffb, %r15
  pushq %r15
  popfq
  retq

.size clear_pf, .-clear_pf
  retq
