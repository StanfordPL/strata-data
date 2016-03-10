  .text
  .globl move_128_064_xmm1_r10_r11
  .type move_128_064_xmm1_r10_r11, @function
#! maybe-read { %xmm1 }
#! maybe-write { %r10 %r11 }
#! must-undef { %r15 %ymm14 %ymm15 }
.move_128_064_xmm1_r10_r11:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm1 to r10, and the higher 64 bits
  # to r11.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %xmm1, %r10
  #
  # move the shuffling constant to xmm15
  movq $0x0706050403020100, %r15
  movq %r15, %xmm14
  movq $0x0f0e0d0c0b0a0908, %r15
  movq %r15, %xmm15
  punpcklqdq %xmm14, %xmm15
  #
  # swap low and high 64 bytes of xmm1
  pshufb %xmm15, %xmm1
  #
  # move higher bits
  movq %xmm1, %r11
  #
  # swap low and high 64 bytes of xmm1
  pshufb %xmm15, %xmm1
  retq

.size move_128_064_xmm1_r10_r11, .-move_128_064_xmm1_r10_r11