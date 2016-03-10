  .text
  .globl move_064_128_r10_r11_xmm2
  .type move_064_128_r10_r11_xmm2, @function
#! maybe-read { %r10 %r11 }
#! maybe-write { %xmm2 }
#! must-undef { %ymm15 }
.move_064_128_r10_r11_xmm2:
  # ----------------------------------------------------------------------------
  # moves r10 to the lower 64 bits of xmm2, and r11 to the higher
  # 64 bits.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %r10, %xmm2
  #
  # move the higher bits
  movq %r11, %xmm15
  punpcklqdq %xmm15, %xmm2
  retq

.size move_064_128_r10_r11_xmm2, .-move_064_128_r10_r11_xmm2