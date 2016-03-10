  .text
  .globl move_128_032_xmm3_eax_edx_r8d_r9d
  .type move_128_032_xmm3_eax_edx_r8d_r9d, @function
#! maybe-read { %xmm3 }
#! maybe-write { %eax %edx %r8d %r9d }
#! must-undef { }
.move_128_032_xmm3_eax_edx_r8d_r9d:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm3 to eax, and so on.
  # ----------------------------------------------------------------------------
  #
  movd %xmm3, %eax
  shufps $0x39, %xmm3, %xmm3
  movd %xmm3, %edx
  shufps $0x39, %xmm3, %xmm3
  movd %xmm3, %r8d
  shufps $0x39, %xmm3, %xmm3
  movd %xmm3, %r9d
  shufps $0x39, %xmm3, %xmm3
  retq

.size move_128_032_xmm3_eax_edx_r8d_r9d, .-move_128_032_xmm3_eax_edx_r8d_r9d