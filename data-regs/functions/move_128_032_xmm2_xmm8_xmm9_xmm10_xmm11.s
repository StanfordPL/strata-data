  .text
  .globl move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11
  .type move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11, @function
#! maybe-read { %xmm2 }
#! maybe-write { %xmm8 %xmm9 %xmm10 %xmm11 }
#! must-undef { }
.move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm2 to xmm8, the next 32 bits to
  # xmm9, the next to xmm10 and the highest 32 bits to xmm11.
  # ----------------------------------------------------------------------------
  #
  xorpd %xmm8, %xmm8
  xorpd %xmm9, %xmm9
  xorpd %xmm10, %xmm10
  xorpd %xmm11, %xmm11
  movss %xmm2, %xmm8
  shufps $0x39, %xmm2, %xmm2
  movss %xmm2, %xmm9
  shufps $0x39, %xmm2, %xmm2
  movss %xmm2, %xmm10
  shufps $0x39, %xmm2, %xmm2
  movss %xmm2, %xmm11
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11, .-move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11