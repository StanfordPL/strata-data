  .text
  .globl move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3
  .type move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3, @function
#! maybe-read { %xmm8 %xmm9 %xmm10 %xmm11 }
#! maybe-write { %xmm3 }
#! must-undef { }
.move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm3 to xmm8, the next 32 bits to
  # xmm9, the next to xmm10 and the highest 32 bits to xmm11.
  # ----------------------------------------------------------------------------
  #
  movss %xmm8, %xmm3
  shufps $0x39, %xmm3, %xmm3
  movss %xmm9, %xmm3
  shufps $0x39, %xmm3, %xmm3
  movss %xmm10, %xmm3
  shufps $0x39, %xmm3, %xmm3
  movss %xmm11, %xmm3
  shufps $0x39, %xmm3, %xmm3
  retq

.size move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3, .-move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3