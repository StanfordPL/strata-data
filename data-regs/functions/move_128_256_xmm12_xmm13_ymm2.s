  .text
  .globl move_128_256_xmm12_xmm13_ymm2
  .type move_128_256_xmm12_xmm13_ymm2, @function
#! maybe-read { %xmm12 %xmm13 }
#! maybe-write { %ymm2 }
#! must-undef { %ymm15 }
.move_128_256_xmm12_xmm13_ymm2:
  # ----------------------------------------------------------------------------
  # moves xmm12 to the lower 128 bits of ymm2, and xmm13 to the higher
  # 128 bits of ymm2.
  # ----------------------------------------------------------------------------
  #
  # move higher bits
  movupd %xmm13, %xmm2
  #
  # swap low and high bits in ymm2
  vperm2f128 $0x1, %ymm2, %ymm2, %ymm15
  vmovupd %ymm15, %ymm2
  #
  # move lower bits
  movupd %xmm12, %xmm2
  retq

.size move_128_256_xmm12_xmm13_ymm2, .-move_128_256_xmm12_xmm13_ymm2
  retq
