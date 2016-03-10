  .text
  .globl move_128_64_xmm1_xmm12_xmm13
  .type move_128_64_xmm1_xmm12_xmm13, @function
#! maybe-read { %xmm1 }
#! maybe-write { %xmm12 %xmm13 }
#! must-undef { %ymm15 }
.move_128_64_xmm1_xmm12_xmm13:
  # ----------------------------------------------------------------------------
  # moves the upper 64 bits of xmm1 to xmm13, and the lower 64 bits
  # to xmm12.
  # ----------------------------------------------------------------------------
  #
  # move low bits
  xorpd %xmm12, %xmm12
  movsd %xmm1, %xmm12
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  #
  # move high bits
  xorpd %xmm13, %xmm13
  movsd %xmm1, %xmm13
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_128_64_xmm1_xmm12_xmm13, .-move_128_64_xmm1_xmm12_xmm13
  retq
