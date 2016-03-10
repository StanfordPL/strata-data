  .text
  .globl move_128_64_xmm2_xmm10_xmm11
  .type move_128_64_xmm2_xmm10_xmm11, @function
#! maybe-read { %xmm2 }
#! maybe-write { %xmm10 %xmm11 }
#! must-undef { %ymm15 }
.move_128_64_xmm2_xmm10_xmm11:
  # ----------------------------------------------------------------------------
  # moves the upper 64 bits of xmm2 to xmm11, and the lower 64 bits
  # to xmm10.
  # ----------------------------------------------------------------------------
  #
  # move low bits
  xorpd %xmm10, %xmm10
  movsd %xmm2, %xmm10
  shufps $0x39, %xmm2, %xmm2
  shufps $0x39, %xmm2, %xmm2
  #
  # move high bits
  xorpd %xmm11, %xmm11
  movsd %xmm2, %xmm11
  shufps $0x39, %xmm2, %xmm2
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_128_64_xmm2_xmm10_xmm11, .-move_128_64_xmm2_xmm10_xmm11
  retq
