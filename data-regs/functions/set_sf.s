  .text
  .globl set_sf
  .type set_sf, @function
#! maybe-read { }
#! maybe-write { %sf }
#! must-undef { %r14 %r15 }
.set_sf:
  # ----------------------------------------------------------------------------
  # set the sf flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  movq $0x80, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
  pushq %r15
  popfq
  retq

.size set_sf, .-set_sf
  retq
