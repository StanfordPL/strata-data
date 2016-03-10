  .text
  .globl move_128_032_xmm3_r10d_r11d_r12d_r13d
  .type move_128_032_xmm3_r10d_r11d_r12d_r13d, @function
#! maybe-read { %xmm3 }
#! maybe-write { %r10d %r11d %r12d %r13d }
#! must-undef { }
.move_128_032_xmm3_r10d_r11d_r12d_r13d:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm3 to r10d, and so on.
  # ----------------------------------------------------------------------------
  #
  movd %xmm3, %r10d
  shufps $0x39, %xmm3, %xmm3
  movd %xmm3, %r11d
  shufps $0x39, %xmm3, %xmm3
  movd %xmm3, %r12d
  shufps $0x39, %xmm3, %xmm3
  movd %xmm3, %r13d
  shufps $0x39, %xmm3, %xmm3
  retq

.size move_128_032_xmm3_r10d_r11d_r12d_r13d, .-move_128_032_xmm3_r10d_r11d_r12d_r13d