  .text
  .globl move_128_64_xmm1_xmm10_xmm11
  .type move_128_64_xmm1_xmm10_xmm11, @function
#! maybe-read { %xmm1 }
#! maybe-write { %xmm10 %xmm11 }
#! must-undef { %ymm15 }
.move_128_64_xmm1_xmm10_xmm11:
  # ----------------------------------------------------------------------------
  # moves the upper 64 bits of xmm1 to xmm11, and the lower 64 bits
  # to xmm10.
  # ----------------------------------------------------------------------------
  #
  # move low bits
  xorpd %xmm10, %xmm10
  movsd %xmm1, %xmm10
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  #
  # move high bits
  xorpd %xmm11, %xmm11
  movsd %xmm1, %xmm11
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_128_64_xmm1_xmm10_xmm11, .-move_128_64_xmm1_xmm10_xmm11
  retq
