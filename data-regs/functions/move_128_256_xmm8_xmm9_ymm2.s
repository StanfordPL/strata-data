  .text
  .globl move_128_256_xmm8_xmm9_ymm2
  .type move_128_256_xmm8_xmm9_ymm2, @function
#! maybe-read { %xmm8 %xmm9 }
#! maybe-write { %ymm2 }
#! must-undef { %ymm15 }
.move_128_256_xmm8_xmm9_ymm2:
  # ----------------------------------------------------------------------------
  # moves xmm8 to the lower 128 bits of ymm2, and xmm9 to the higher
  # 128 bits of ymm2.
  # ----------------------------------------------------------------------------
  #
  # move higher bits
  movupd %xmm9, %xmm2
  #
  # swap low and high bits in ymm2
  vperm2f128 $0x1, %ymm2, %ymm2, %ymm15
  vmovupd %ymm15, %ymm2
  #
  # move lower bits
  movupd %xmm8, %xmm2
  retq

.size move_128_256_xmm8_xmm9_ymm2, .-move_128_256_xmm8_xmm9_ymm2
  retq
