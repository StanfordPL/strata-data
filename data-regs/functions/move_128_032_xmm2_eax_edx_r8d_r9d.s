  .text
  .globl move_128_032_xmm2_eax_edx_r8d_r9d
  .type move_128_032_xmm2_eax_edx_r8d_r9d, @function
#! maybe-read { %xmm2 }
#! maybe-write { %eax %edx %r8d %r9d }
#! must-undef { }
.move_128_032_xmm2_eax_edx_r8d_r9d:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm2 to eax, and so on.
  # ----------------------------------------------------------------------------
  #
  movd %xmm2, %eax
  shufps $0x39, %xmm2, %xmm2
  movd %xmm2, %edx
  shufps $0x39, %xmm2, %xmm2
  movd %xmm2, %r8d
  shufps $0x39, %xmm2, %xmm2
  movd %xmm2, %r9d
  shufps $0x39, %xmm2, %xmm2
  retq

.size move_128_032_xmm2_eax_edx_r8d_r9d, .-move_128_032_xmm2_eax_edx_r8d_r9d