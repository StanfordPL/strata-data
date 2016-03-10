  .text
  .globl move_128_064_xmm2_r12_r13
  .type move_128_064_xmm2_r12_r13, @function
#! maybe-read { %xmm2 }
#! maybe-write { %r12 %r13 }
#! must-undef { %r15 %ymm14 %ymm15 }
.move_128_064_xmm2_r12_r13:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm2 to r12, and the higher 64 bits
  # to r13.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %xmm2, %r12
  #
  # move the shuffling constant to xmm15
  movq $0x0706050403020100, %r15
  movq %r15, %xmm14
  movq $0x0f0e0d0c0b0a0908, %r15
  movq %r15, %xmm15
  punpcklqdq %xmm14, %xmm15
  #
  # swap low and high 64 bytes of xmm2
  pshufb %xmm15, %xmm2
  #
  # move higher bits
  movq %xmm2, %r13
  #
  # swap low and high 64 bytes of xmm2
  pshufb %xmm15, %xmm2
  retq

.size move_128_064_xmm2_r12_r13, .-move_128_064_xmm2_r12_r13