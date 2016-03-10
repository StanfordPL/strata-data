  .text
  .globl move_064_128_r8_r9_xmm3
  .type move_064_128_r8_r9_xmm3, @function
#! maybe-read { %r8 %r9 }
#! maybe-write { %xmm3 }
#! must-undef { %ymm15 }
.move_064_128_r8_r9_xmm3:
  # ----------------------------------------------------------------------------
  # moves r8 to the lower 64 bits of xmm3, and r9 to the higher
  # 64 bits.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %r8, %xmm3
  #
  # move the higher bits
  movq %r9, %xmm15
  punpcklqdq %xmm15, %xmm3
  retq

.size move_064_128_r8_r9_xmm3, .-move_064_128_r8_r9_xmm3