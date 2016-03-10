  .text
  .globl move_128_64_xmm3_xmm8_xmm9
  .type move_128_64_xmm3_xmm8_xmm9, @function
#! maybe-read { %xmm3 }
#! maybe-write { %xmm8 %xmm9 }
#! must-undef { %ymm15 }
.move_128_64_xmm3_xmm8_xmm9:
  # ----------------------------------------------------------------------------
  # moves the upper 64 bits of xmm3 to xmm9, and the lower 64 bits
  # to xmm8.
  # ----------------------------------------------------------------------------
  #
  # move low bits
  xorpd %xmm8, %xmm8
  movsd %xmm3, %xmm8
  shufps $0x39, %xmm3, %xmm3
  shufps $0x39, %xmm3, %xmm3
  #
  # move high bits
  xorpd %xmm9, %xmm9
  movsd %xmm3, %xmm9
  shufps $0x39, %xmm3, %xmm3
  shufps $0x39, %xmm3, %xmm3
  retq

.size move_128_64_xmm3_xmm8_xmm9, .-move_128_64_xmm3_xmm8_xmm9
  retq
