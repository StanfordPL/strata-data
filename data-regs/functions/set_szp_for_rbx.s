  .text
  .globl set_szp_for_rbx
  .type set_szp_for_rbx, @function
#! maybe-read { %rbx }
#! maybe-write { %zf %pf %sf }
#! must-undef { %r14 %r15 }
.set_szp_for_rbx:
  # ----------------------------------------------------------------------------
  # set the zf, sf, pf according to the result in %r8
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  # clear zf, sf and pf
  andq $0xffffff3b, %r15
  # set zf if necessary
  testq %rbx, %rbx
  jne .lbl370
  orq $0x40, %r15
.lbl370:
  # set sf if necessary
  testq %rbx, %rbx
  jns .lbl371
  movq $0x80, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
.lbl371:
  # set zf if necessary
  testq %rbx, %rbx
  jnp .lbl372
  orq $0x4, %r15
.lbl372:
  pushq %r15
  popfq
  retq

.size set_szp_for_rbx, .-set_szp_for_rbx
  retq

