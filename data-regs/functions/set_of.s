  .text
  .globl set_of
  .type set_of, @function
#! maybe-read { }
#! maybe-write { %of }
#! must-undef { %r14 %r15 }
.set_of:
  # ----------------------------------------------------------------------------
  # set the of flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  movq $0x800, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
  pushq %r15
  popfq
  retq

.size set_of, .-set_of
  retq
