  .text
  .globl move_064_032_rdx_r8d_r9d
  .type move_064_032_rdx_r8d_r9d, @function
#! maybe-read { %rdx }
#! maybe-write { %r8d %r9d }
#! must-undef { %r15 }
.move_064_032_rdx_r8d_r9d:
  # ----------------------------------------------------------------------------
  # moves rdx to r8d and r9d.
  # ----------------------------------------------------------------------------
  pushfq
  movq %rdx, %r15
  movl %r15d, %r8d
  shrq $0x20, %r15
  movl %r15d, %r9d
  popfq
  retq

.size move_064_032_rdx_r8d_r9d, .-move_064_032_rdx_r8d_r9d