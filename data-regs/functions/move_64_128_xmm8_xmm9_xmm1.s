  .text
  .globl move_64_128_xmm8_xmm9_xmm1
  .type move_64_128_xmm8_xmm9_xmm1, @function
#! maybe-read { %xmm8 %xmm9 }
#! maybe-write { %xmm1 }
#! must-undef { %ymm15 }
.move_64_128_xmm8_xmm9_xmm1:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm9 to the higher 64 bits of xmm1,
  # and the lower 64 bits of xmm8 to the lower 64 bits of xmm1
  # ----------------------------------------------------------------------------
  #
  # move low bits
  movsd %xmm8, %xmm1
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  #
  # move high bits
  movsd %xmm9, %xmm1
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_64_128_xmm8_xmm9_xmm1, .-move_64_128_xmm8_xmm9_xmm1
  retq
