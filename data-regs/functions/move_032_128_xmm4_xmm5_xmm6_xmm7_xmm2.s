  .text
  .globl move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2
  .type move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2, @function
#! maybe-read { %xmm4 %xmm5 %xmm6 %xmm7 }
#! maybe-write { %xmm2 }
#! must-undef { }
.move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm2 to xmm4, the next 32 bits to
  # xmm5, the next to xmm6 and the highest 32 bits to xmm7.
  # ----------------------------------------------------------------------------
  #
  movss %xmm4, %xmm2
  shufps $0x39, %xmm2, %xmm2
  movss %xmm5, %xmm2
  shufps $0x39, %xmm2, %xmm2
  movss %xmm6, %xmm2
  shufps $0x39, %xmm2, %xmm2
  movss %xmm7, %xmm2
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2, .-move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2