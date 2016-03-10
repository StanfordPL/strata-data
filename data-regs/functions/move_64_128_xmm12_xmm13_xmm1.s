  .text
  .globl move_64_128_xmm12_xmm13_xmm1
  .type move_64_128_xmm12_xmm13_xmm1, @function
#! maybe-read { %xmm12 %xmm13 }
#! maybe-write { %xmm1 }
#! must-undef { %ymm15 }
.move_64_128_xmm12_xmm13_xmm1:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm13 to the higher 64 bits of xmm1,
  # and the lower 64 bits of xmm12 to the lower 64 bits of xmm1
  # ----------------------------------------------------------------------------
  #
  # move low bits
  movsd %xmm12, %xmm1
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  #
  # move high bits
  movsd %xmm13, %xmm1
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_64_128_xmm12_xmm13_xmm1, .-move_64_128_xmm12_xmm13_xmm1
  retq
