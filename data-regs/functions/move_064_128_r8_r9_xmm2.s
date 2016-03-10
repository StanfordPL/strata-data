  .text
  .globl move_064_128_r8_r9_xmm2
  .type move_064_128_r8_r9_xmm2, @function
#! maybe-read { %r8 %r9 }
#! maybe-write { %xmm2 }
#! must-undef { %ymm15 }
.move_064_128_r8_r9_xmm2:
  # ----------------------------------------------------------------------------
  # moves r8 to the lower 64 bits of xmm2, and r9 to the higher
  # 64 bits.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %r8, %xmm2
  #
  # move the higher bits
  movq %r9, %xmm15
  punpcklqdq %xmm15, %xmm2
  retq

.size move_064_128_r8_r9_xmm2, .-move_064_128_r8_r9_xmm2