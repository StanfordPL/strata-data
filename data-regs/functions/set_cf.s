  .text
  .globl set_cf
  .type set_cf, @function
#! maybe-read { }
#! maybe-write { %cf }
#! must-undef { %r14 %r15 }
.set_cf:
  # ----------------------------------------------------------------------------
  # set the cf flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  movq $0x1, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
  pushq %r15
  popfq
  retq

.size set_cf, .-set_cf
  retq
