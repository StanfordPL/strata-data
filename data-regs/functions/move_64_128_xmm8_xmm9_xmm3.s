  .text
  .globl move_64_128_xmm8_xmm9_xmm3
  .type move_64_128_xmm8_xmm9_xmm3, @function
#! maybe-read { %xmm8 %xmm9 }
#! maybe-write { %xmm3 }
#! must-undef { %ymm15 }
.move_64_128_xmm8_xmm9_xmm3:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm9 to the higher 64 bits of xmm3,
  # and the lower 64 bits of xmm8 to the lower 64 bits of xmm3
  # ----------------------------------------------------------------------------
  #
  # move low bits
  movsd %xmm8, %xmm3
  shufps $0x39, %xmm3, %xmm3
  shufps $0x39, %xmm3, %xmm3
  #
  # move high bits
  movsd %xmm9, %xmm3
  shufps $0x39, %xmm3, %xmm3
  shufps $0x39, %xmm3, %xmm3
  retq

.size move_64_128_xmm8_xmm9_xmm3, .-move_64_128_xmm8_xmm9_xmm3
  retq
