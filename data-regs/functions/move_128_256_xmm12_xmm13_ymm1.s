  .text
  .globl move_128_256_xmm12_xmm13_ymm1
  .type move_128_256_xmm12_xmm13_ymm1, @function
#! maybe-read { %xmm12 %xmm13 }
#! maybe-write { %ymm1 }
#! must-undef { %ymm15 }
.move_128_256_xmm12_xmm13_ymm1:
  # ----------------------------------------------------------------------------
  # moves xmm12 to the lower 128 bits of ymm1, and xmm13 to the higher
  # 128 bits of ymm1.
  # ----------------------------------------------------------------------------
  #
  # move higher bits
  movupd %xmm13, %xmm1
  #
  # swap low and high bits in ymm1
  vperm2f128 $0x1, %ymm1, %ymm1, %ymm15
  vmovupd %ymm15, %ymm1
  #
  # move lower bits
  movupd %xmm12, %xmm1
  retq

.size move_128_256_xmm12_xmm13_ymm1, .-move_128_256_xmm12_xmm13_ymm1
  retq
