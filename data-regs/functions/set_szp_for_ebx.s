  .text
  .globl set_szp_for_ebx
  .type set_szp_for_ebx, @function
#! maybe-read { %ebx }
#! maybe-write { %zf %pf %sf }
#! must-undef { %r14 %r15 }
.set_szp_for_ebx:
  # ----------------------------------------------------------------------------
  # set the zf, sf, pf according to the result in %r8
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  # clear zf, sf and pf
  andq $0xffffff3b, %r15
  # set zf if necessary
  testl %ebx, %ebx
  jne .lbl360
  orq $0x40, %r15
.lbl360:
  # set sf if necessary
  testl %ebx, %ebx
  jns .lbl361
  movq $0x80, %r14 # avoid sign extend when doing the or
  orq %r14, %r15
.lbl361:
  # set zf if necessary
  testl %ebx, %ebx
  jnp .lbl362
  orq $0x4, %r15
.lbl362:
  pushq %r15
  popfq
  retq

.size set_szp_for_ebx, .-set_szp_for_ebx
  retq

