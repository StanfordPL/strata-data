  .text
  .globl move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1
  .type move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1, @function
#! maybe-read { %xmm8 %xmm9 %xmm10 %xmm11 }
#! maybe-write { %xmm1 }
#! must-undef { }
.move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm1 to xmm8, the next 32 bits to
  # xmm9, the next to xmm10 and the highest 32 bits to xmm11.
  # ----------------------------------------------------------------------------
  #
  movss %xmm8, %xmm1
  shufps $0x39, %xmm1, %xmm1
  movss %xmm9, %xmm1
  shufps $0x39, %xmm1, %xmm1
  movss %xmm10, %xmm1
  shufps $0x39, %xmm1, %xmm1
  movss %xmm11, %xmm1
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1, .-move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1