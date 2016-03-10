  .text
  .globl move_064_032_rbx_r12d_r13d
  .type move_064_032_rbx_r12d_r13d, @function
#! maybe-read { %rbx }
#! maybe-write { %r12d %r13d }
#! must-undef { %r15 }
.move_064_032_rbx_r12d_r13d:
  # ----------------------------------------------------------------------------
  # moves rbx to r12d and r13d.
  # ----------------------------------------------------------------------------
  pushfq
  movq %rbx, %r15
  movl %r15d, %r12d
  shrq $0x20, %r15
  movl %r15d, %r13d
  popfq
  retq

.size move_064_032_rbx_r12d_r13d, .-move_064_032_rbx_r12d_r13d