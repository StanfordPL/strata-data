  .text
  .globl move_128_64_xmm2_xmm12_xmm13
  .type move_128_64_xmm2_xmm12_xmm13, @function
#! maybe-read { %xmm2 }
#! maybe-write { %xmm12 %xmm13 }
#! must-undef { %ymm15 }
.move_128_64_xmm2_xmm12_xmm13:
  # ----------------------------------------------------------------------------
  # moves the upper 64 bits of xmm2 to xmm13, and the lower 64 bits
  # to xmm12.
  # ----------------------------------------------------------------------------
  #
  # move low bits
  xorpd %xmm12, %xmm12
  movsd %xmm2, %xmm12
  shufps $0x39, %xmm2, %xmm2
  shufps $0x39, %xmm2, %xmm2
  #
  # move high bits
  xorpd %xmm13, %xmm13
  movsd %xmm2, %xmm13
  shufps $0x39, %xmm2, %xmm2
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_128_64_xmm2_xmm12_xmm13, .-move_128_64_xmm2_xmm12_xmm13
  retq
