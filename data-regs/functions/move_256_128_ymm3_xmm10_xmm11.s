  .text
  .globl move_256_128_ymm3_xmm10_xmm11
  .type move_256_128_ymm3_xmm10_xmm11, @function
#! maybe-read { %ymm3 }
#! maybe-write { %xmm10 %xmm11 }
#! must-undef { %ymm15 }
.move_256_128_ymm3_xmm10_xmm11:
  # ----------------------------------------------------------------------------
  # moves the lower 128 bits of ymm3 to xmm10, and the higher 128 bits
  # to xmm11.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movupd %xmm3, %xmm10
  #
  # mov low and high 128 bytes of ymm3 to ymm15, and swap them
  vperm2f128 $0x1, %ymm3, %ymm3, %ymm15
  #
  # move higher bits
  movupd %xmm15, %xmm11
  retq

.size move_256_128_ymm3_xmm10_xmm11, .-move_256_128_ymm3_xmm10_xmm11
  retq
