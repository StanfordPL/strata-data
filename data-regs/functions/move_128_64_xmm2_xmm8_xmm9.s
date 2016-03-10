  .text
  .globl move_128_64_xmm2_xmm8_xmm9
  .type move_128_64_xmm2_xmm8_xmm9, @function
#! maybe-read { %xmm2 }
#! maybe-write { %xmm8 %xmm9 }
#! must-undef { %ymm15 }
.move_128_64_xmm2_xmm8_xmm9:
  # ----------------------------------------------------------------------------
  # moves the upper 64 bits of xmm2 to xmm9, and the lower 64 bits
  # to xmm8.
  # ----------------------------------------------------------------------------
  #
  # move low bits
  xorpd %xmm8, %xmm8
  movsd %xmm2, %xmm8
  shufps $0x39, %xmm2, %xmm2
  shufps $0x39, %xmm2, %xmm2
  #
  # move high bits
  xorpd %xmm9, %xmm9
  movsd %xmm2, %xmm9
  shufps $0x39, %xmm2, %xmm2
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_128_64_xmm2_xmm8_xmm9, .-move_128_64_xmm2_xmm8_xmm9
  retq
