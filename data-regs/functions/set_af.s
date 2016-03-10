  .text
  .globl set_af
  .type set_af, @function
#! maybe-read { }
#! maybe-write { %af }
#! must-undef { %r14 %r15 }
.set_af:
  # ----------------------------------------------------------------------------
  # set the af flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  movq $0x10, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
  pushq %r15
  popfq
  retq

.size set_af, .-set_af
  retq
