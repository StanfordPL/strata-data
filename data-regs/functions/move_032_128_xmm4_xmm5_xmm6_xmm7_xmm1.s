  .text
  .globl move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1
  .type move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1, @function
#! maybe-read { %xmm4 %xmm5 %xmm6 %xmm7 }
#! maybe-write { %xmm1 }
#! must-undef { }
.move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm1 to xmm4, the next 32 bits to
  # xmm5, the next to xmm6 and the highest 32 bits to xmm7.
  # ----------------------------------------------------------------------------
  #
  movss %xmm4, %xmm1
  shufps $0x39, %xmm1, %xmm1
  movss %xmm5, %xmm1
  shufps $0x39, %xmm1, %xmm1
  movss %xmm6, %xmm1
  shufps $0x39, %xmm1, %xmm1
  movss %xmm7, %xmm1
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1, .-move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1