  .text
  .globl move_128_256_xmm12_xmm13_ymm3
  .type move_128_256_xmm12_xmm13_ymm3, @function
#! maybe-read { %xmm12 %xmm13 }
#! maybe-write { %ymm3 }
#! must-undef { %ymm15 }
.move_128_256_xmm12_xmm13_ymm3:
  # ----------------------------------------------------------------------------
  # moves xmm12 to the lower 128 bits of ymm3, and xmm13 to the higher
  # 128 bits of ymm3.
  # ----------------------------------------------------------------------------
  #
  # move higher bits
  movupd %xmm13, %xmm3
  #
  # swap low and high bits in ymm3
  vperm2f128 $0x1, %ymm3, %ymm3, %ymm15
  vmovupd %ymm15, %ymm3
  #
  # move lower bits
  movupd %xmm12, %xmm3
  retq

.size move_128_256_xmm12_xmm13_ymm3, .-move_128_256_xmm12_xmm13_ymm3
  retq
