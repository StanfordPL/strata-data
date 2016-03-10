  .text
  .globl move_032_064_r12d_r13d_rbx
  .type move_032_064_r12d_r13d_rbx, @function
#! maybe-read { %r12d %r13d }
#! maybe-write { %rbx }
#! must-undef { %r14 %r15 }
.move_032_064_r12d_r13d_rbx:
  # ----------------------------------------------------------------------------
  # moves r12d and r13d to rbx.
  # ----------------------------------------------------------------------------
  pushfq
  movl %r13d, %r15d
  shlq $0x20, %r15
  movl %r12d, %r14d
  orq %r14, %r15
  movq %r15, %rbx
  popfq
  retq

.size move_032_064_r12d_r13d_rbx, .-move_032_064_r12d_r13d_rbx