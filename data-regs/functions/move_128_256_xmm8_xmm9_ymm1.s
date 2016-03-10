  .text
  .globl move_128_256_xmm8_xmm9_ymm1
  .type move_128_256_xmm8_xmm9_ymm1, @function
#! maybe-read { %xmm8 %xmm9 }
#! maybe-write { %ymm1 }
#! must-undef { %ymm15 }
.move_128_256_xmm8_xmm9_ymm1:
  # ----------------------------------------------------------------------------
  # moves xmm8 to the lower 128 bits of ymm1, and xmm9 to the higher
  # 128 bits of ymm1.
  # ----------------------------------------------------------------------------
  #
  # move higher bits
  movupd %xmm9, %xmm1
  #
  # swap low and high bits in ymm1
  vperm2f128 $0x1, %ymm1, %ymm1, %ymm15
  vmovupd %ymm15, %ymm1
  #
  # move lower bits
  movupd %xmm8, %xmm1
  retq

.size move_128_256_xmm8_xmm9_ymm1, .-move_128_256_xmm8_xmm9_ymm1
  retq
