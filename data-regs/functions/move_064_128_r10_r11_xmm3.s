  .text
  .globl move_064_128_r10_r11_xmm3
  .type move_064_128_r10_r11_xmm3, @function
#! maybe-read { %r10 %r11 }
#! maybe-write { %xmm3 }
#! must-undef { %ymm15 }
.move_064_128_r10_r11_xmm3:
  # ----------------------------------------------------------------------------
  # moves r10 to the lower 64 bits of xmm3, and r11 to the higher
  # 64 bits.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %r10, %xmm3
  #
  # move the higher bits
  movq %r11, %xmm15
  punpcklqdq %xmm15, %xmm3
  retq

.size move_064_128_r10_r11_xmm3, .-move_064_128_r10_r11_xmm3