  .text
  .globl move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2
  .type move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2, @function
#! maybe-read { %xmm8 %xmm9 %xmm10 %xmm11 }
#! maybe-write { %xmm2 }
#! must-undef { }
.move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm2 to xmm8, the next 32 bits to
  # xmm9, the next to xmm10 and the highest 32 bits to xmm11.
  # ----------------------------------------------------------------------------
  #
  movss %xmm8, %xmm2
  shufps $0x39, %xmm2, %xmm2
  movss %xmm9, %xmm2
  shufps $0x39, %xmm2, %xmm2
  movss %xmm10, %xmm2
  shufps $0x39, %xmm2, %xmm2
  movss %xmm11, %xmm2
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2, .-move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2