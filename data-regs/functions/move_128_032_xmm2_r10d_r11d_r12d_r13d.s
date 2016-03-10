  .text
  .globl move_128_032_xmm2_r10d_r11d_r12d_r13d
  .type move_128_032_xmm2_r10d_r11d_r12d_r13d, @function
#! maybe-read { %xmm2 }
#! maybe-write { %r10d %r11d %r12d %r13d }
#! must-undef { }
.move_128_032_xmm2_r10d_r11d_r12d_r13d:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm2 to r10d, and so on.
  # ----------------------------------------------------------------------------
  #
  movd %xmm2, %r10d
  shufps $0x39, %xmm2, %xmm2
  movd %xmm2, %r11d
  shufps $0x39, %xmm2, %xmm2
  movd %xmm2, %r12d
  shufps $0x39, %xmm2, %xmm2
  movd %xmm2, %r13d
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_128_032_xmm2_r10d_r11d_r12d_r13d, .-move_128_032_xmm2_r10d_r11d_r12d_r13d