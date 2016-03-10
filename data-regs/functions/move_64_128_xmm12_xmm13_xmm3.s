  .text
  .globl move_64_128_xmm12_xmm13_xmm3
  .type move_64_128_xmm12_xmm13_xmm3, @function
#! maybe-read { %xmm12 %xmm13 }
#! maybe-write { %xmm3 }
#! must-undef { %ymm15 }
.move_64_128_xmm12_xmm13_xmm3:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm13 to the higher 64 bits of xmm3,
  # and the lower 64 bits of xmm12 to the lower 64 bits of xmm3
  # ----------------------------------------------------------------------------
  #
  # move low bits
  movsd %xmm12, %xmm3
  shufps $0x39, %xmm3, %xmm3
  shufps $0x39, %xmm3, %xmm3
  #
  # move high bits
  movsd %xmm13, %xmm3
  shufps $0x39, %xmm3, %xmm3
  shufps $0x39, %xmm3, %xmm3
  retq

.size move_64_128_xmm12_xmm13_xmm3, .-move_64_128_xmm12_xmm13_xmm3
  retq
