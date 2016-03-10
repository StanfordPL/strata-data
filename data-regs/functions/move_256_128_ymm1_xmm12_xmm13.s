  .text
  .globl move_256_128_ymm1_xmm12_xmm13
  .type move_256_128_ymm1_xmm12_xmm13, @function
#! maybe-read { %ymm1 }
#! maybe-write { %xmm12 %xmm13 }
#! must-undef { %ymm15 }
.move_256_128_ymm1_xmm12_xmm13:
  # ----------------------------------------------------------------------------
  # moves the lower 128 bits of ymm1 to xmm12, and the higher 128 bits
  # to xmm13.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movupd %xmm1, %xmm12
  #
  # mov low and high 128 bytes of ymm1 to ymm15, and swap them
  vperm2f128 $0x1, %ymm1, %ymm1, %ymm15
  #
  # move higher bits
  movupd %xmm15, %xmm13
  retq

.size move_256_128_ymm1_xmm12_xmm13, .-move_256_128_ymm1_xmm12_xmm13
  retq
