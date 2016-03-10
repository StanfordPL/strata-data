  .text
  .globl clear_cf
  .type clear_cf, @function
#! maybe-read { }
#! maybe-write { %cf }
#! must-undef { %r15 }
.clear_cf:
  # ----------------------------------------------------------------------------
  # clear the cf flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  andq $0xfffffffe, %r15
  pushq %r15
  popfq
  retq

.size clear_cf, .-clear_cf
  retq
