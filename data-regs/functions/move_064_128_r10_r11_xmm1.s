  .text
  .globl move_064_128_r10_r11_xmm1
  .type move_064_128_r10_r11_xmm1, @function
#! maybe-read { %r10 %r11 }
#! maybe-write { %xmm1 }
#! must-undef { %ymm15 }
.move_064_128_r10_r11_xmm1:
  # ----------------------------------------------------------------------------
  # moves r10 to the lower 64 bits of xmm1, and r11 to the higher
  # 64 bits.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %r10, %xmm1
  #
  # move the higher bits
  movq %r11, %xmm15
  punpcklqdq %xmm15, %xmm1
  retq

.size move_064_128_r10_r11_xmm1, .-move_064_128_r10_r11_xmm1