  .text
  .globl set_pf
  .type set_pf, @function
#! maybe-read { }
#! maybe-write { %pf }
#! must-undef { %r14 %r15 }
.set_pf:
  # ----------------------------------------------------------------------------
  # set the pf flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  movq $0x4, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
  pushq %r15
  popfq
  retq

.size set_pf, .-set_pf
  retq
