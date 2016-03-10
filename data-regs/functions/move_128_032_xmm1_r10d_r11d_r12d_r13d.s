  .text
  .globl move_128_032_xmm1_r10d_r11d_r12d_r13d
  .type move_128_032_xmm1_r10d_r11d_r12d_r13d, @function
#! maybe-read { %xmm1 }
#! maybe-write { %r10d %r11d %r12d %r13d }
#! must-undef { }
.move_128_032_xmm1_r10d_r11d_r12d_r13d:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm1 to r10d, and so on.
  # ----------------------------------------------------------------------------
  #
  movd %xmm1, %r10d
  shufps $0x39, %xmm1, %xmm1
  movd %xmm1, %r11d
  shufps $0x39, %xmm1, %xmm1
  movd %xmm1, %r12d
  shufps $0x39, %xmm1, %xmm1
  movd %xmm1, %r13d
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_128_032_xmm1_r10d_r11d_r12d_r13d, .-move_128_032_xmm1_r10d_r11d_r12d_r13d