  .text
  .globl move_128_256_xmm8_xmm9_ymm3
  .type move_128_256_xmm8_xmm9_ymm3, @function
#! maybe-read { %xmm8 %xmm9 }
#! maybe-write { %ymm3 }
#! must-undef { %ymm15 }
.move_128_256_xmm8_xmm9_ymm3:
  # ----------------------------------------------------------------------------
  # moves xmm8 to the lower 128 bits of ymm3, and xmm9 to the higher
  # 128 bits of ymm3.
  # ----------------------------------------------------------------------------
  #
  # move higher bits
  movupd %xmm9, %xmm3
  #
  # swap low and high bits in ymm3
  vperm2f128 $0x1, %ymm3, %ymm3, %ymm15
  vmovupd %ymm15, %ymm3
  #
  # move lower bits
  movupd %xmm8, %xmm3
  retq

.size move_128_256_xmm8_xmm9_ymm3, .-move_128_256_xmm8_xmm9_ymm3
  retq
