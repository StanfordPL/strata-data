  .text
  .globl set_zf
  .type set_zf, @function
#! maybe-read { }
#! maybe-write { %zf }
#! must-undef { %r14 %r15 }
.set_zf:
  # ----------------------------------------------------------------------------
  # set the zf flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  movq $0x40, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
  pushq %r15
  popfq
  retq

.size set_zf, .-set_zf
  retq
