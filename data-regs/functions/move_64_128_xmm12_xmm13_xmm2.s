  .text
  .globl move_64_128_xmm12_xmm13_xmm2
  .type move_64_128_xmm12_xmm13_xmm2, @function
#! maybe-read { %xmm12 %xmm13 }
#! maybe-write { %xmm2 }
#! must-undef { %ymm15 }
.move_64_128_xmm12_xmm13_xmm2:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm13 to the higher 64 bits of xmm2,
  # and the lower 64 bits of xmm12 to the lower 64 bits of xmm2
  # ----------------------------------------------------------------------------
  #
  # move low bits
  movsd %xmm12, %xmm2
  shufps $0x39, %xmm2, %xmm2
  shufps $0x39, %xmm2, %xmm2
  #
  # move high bits
  movsd %xmm13, %xmm2
  shufps $0x39, %xmm2, %xmm2
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_64_128_xmm12_xmm13_xmm2, .-move_64_128_xmm12_xmm13_xmm2
  retq
