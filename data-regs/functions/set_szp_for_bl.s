  .text
  .globl set_szp_for_bl
  .type set_szp_for_bl, @function
#! maybe-read { %bl }
#! maybe-write { %zf %pf %sf }
#! must-undef { %r14 %r15 }
.set_szp_for_bl:
  # ----------------------------------------------------------------------------
  # set the zf, sf, pf according to the result in %r8
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  # clear zf, sf and pf
  andq $0xffffff3b, %r15
  # set zf if necessary
  testb %bl, %bl
  jne .lbl340
  orq $0x40, %r15
.lbl340:
  # set sf if necessary
  testb %bl, %bl
  jns .lbl341
  movq $0x80, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
.lbl341:
  # set zf if necessary
  testb %bl, %bl
  jnp .lbl342
  orq $0x4, %r15
.lbl342:
  pushq %r15
  popfq
  retq

.size set_szp_for_bl, .-set_szp_for_bl
  retq

