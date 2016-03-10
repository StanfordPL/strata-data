  .text
  .globl move_128_64_xmm1_xmm8_xmm9
  .type move_128_64_xmm1_xmm8_xmm9, @function
#! maybe-read { %xmm1 }
#! maybe-write { %xmm8 %xmm9 }
#! must-undef { %ymm15 }
.move_128_64_xmm1_xmm8_xmm9:
  # ----------------------------------------------------------------------------
  # moves the upper 64 bits of xmm1 to xmm9, and the lower 64 bits
  # to xmm8.
  # ----------------------------------------------------------------------------
  #
  # move low bits
  xorpd %xmm8, %xmm8
  movsd %xmm1, %xmm8
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  #
  # move high bits
  xorpd %xmm9, %xmm9
  movsd %xmm1, %xmm9
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_128_64_xmm1_xmm8_xmm9, .-move_128_64_xmm1_xmm8_xmm9
  retq
