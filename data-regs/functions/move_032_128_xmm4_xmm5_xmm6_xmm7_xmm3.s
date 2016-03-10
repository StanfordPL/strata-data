  .text
  .globl move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3
  .type move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3, @function
#! maybe-read { %xmm4 %xmm5 %xmm6 %xmm7 }
#! maybe-write { %xmm3 }
#! must-undef { }
.move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm3 to xmm4, the next 32 bits to
  # xmm5, the next to xmm6 and the highest 32 bits to xmm7.
  # ----------------------------------------------------------------------------
  #
  movss %xmm4, %xmm3
  shufps $0x39, %xmm3, %xmm3
  movss %xmm5, %xmm3
  shufps $0x39, %xmm3, %xmm3
  movss %xmm6, %xmm3
  shufps $0x39, %xmm3, %xmm3
  movss %xmm7, %xmm3
  shufps $0x39, %xmm3, %xmm3
  retq

.size move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3, .-move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3