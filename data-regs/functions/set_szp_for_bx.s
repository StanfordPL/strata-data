  .text
  .globl set_szp_for_bx
  .type set_szp_for_bx, @function
#! maybe-read { %bx }
#! maybe-write { %zf %pf %sf }
#! must-undef { %r14 %r15 }
.set_szp_for_bx:
  # ----------------------------------------------------------------------------
  # set the zf, sf, pf according to the result in %r8
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  # clear zf, sf and pf
  andq $0xffffff3b, %r15
  # set zf if necessary
  testw %bx, %bx
  jne .lbl350
  orq $0x40, %r15
.lbl350:
  # set sf if necessary
  testw %bx, %bx
  jns .lbl351
  movq $0x80, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
.lbl351:
  # set zf if necessary
  testw %bx, %bx
  jnp .lbl352
  orq $0x4, %r15
.lbl352:
  pushq %r15
  popfq
  retq

.size set_szp_for_bx, .-set_szp_for_bx
  retq

