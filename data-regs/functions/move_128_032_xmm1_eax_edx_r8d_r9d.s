  .text
  .globl move_128_032_xmm1_eax_edx_r8d_r9d
  .type move_128_032_xmm1_eax_edx_r8d_r9d, @function
#! maybe-read { %xmm1 }
#! maybe-write { %eax %edx %r8d %r9d }
#! must-undef { }
.move_128_032_xmm1_eax_edx_r8d_r9d:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm1 to eax, and so on.
  # ----------------------------------------------------------------------------
  #
  movd %xmm1, %eax
  shufps $0x39, %xmm1, %xmm1
  movd %xmm1, %edx
  shufps $0x39, %xmm1, %xmm1
  movd %xmm1, %r8d
  shufps $0x39, %xmm1, %xmm1
  movd %xmm1, %r9d
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_128_032_xmm1_eax_edx_r8d_r9d, .-move_128_032_xmm1_eax_edx_r8d_r9d