  .text
  .globl move_128_064_xmm3_r8_r9
  .type move_128_064_xmm3_r8_r9, @function
#! maybe-read { %xmm3 }
#! maybe-write { %r8 %r9 }
#! must-undef { %r15 %ymm14 %ymm15 }
.move_128_064_xmm3_r8_r9:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm3 to r8, and the higher 64 bits
  # to r9.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %xmm3, %r8
  #
  # move the shuffling constant to xmm15
  movq $0x0706050403020100, %r15
  movq %r15, %xmm14
  movq $0x0f0e0d0c0b0a0908, %r15
  movq %r15, %xmm15
  punpcklqdq %xmm14, %xmm15
  #
  # swap low and high 64 bytes of xmm3
  pshufb %xmm15, %xmm3
  #
  # move higher bits
  movq %xmm3, %r9
  #
  # swap low and high 64 bytes of xmm3
  pshufb %xmm15, %xmm3
  retq

.size move_128_064_xmm3_r8_r9, .-move_128_064_xmm3_r8_r9