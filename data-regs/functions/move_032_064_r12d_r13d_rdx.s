  .text
  .globl move_032_064_r12d_r13d_rdx
  .type move_032_064_r12d_r13d_rdx, @function
#! maybe-read { %r12d %r13d }
#! maybe-write { %rdx }
#! must-undef { %r14 %r15 }
.move_032_064_r12d_r13d_rdx:
  # ----------------------------------------------------------------------------
  # moves r12d and r13d to rdx.
  # ----------------------------------------------------------------------------
  pushfq
  movl %r13d, %r15d
  shlq $0x20, %r15
  movl %r12d, %r14d
  orq %r14, %r15
  movq %r15, %rdx
  popfq
  retq

.size move_032_064_r12d_r13d_rdx, .-move_032_064_r12d_r13d_rdx