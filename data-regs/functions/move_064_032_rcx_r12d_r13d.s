  .text
  .globl move_064_032_rcx_r12d_r13d
  .type move_064_032_rcx_r12d_r13d, @function
#! maybe-read { %rcx }
#! maybe-write { %r12d %r13d }
#! must-undef { %r15 }
.move_064_032_rcx_r12d_r13d:
  # ----------------------------------------------------------------------------
  # moves rcx to r12d and r13d.
  # ----------------------------------------------------------------------------
  pushfq
  movq %rcx, %r15
  movl %r15d, %r12d
  shrq $0x20, %r15
  movl %r15d, %r13d
  popfq
  retq

.size move_064_032_rcx_r12d_r13d, .-move_064_032_rcx_r12d_r13d