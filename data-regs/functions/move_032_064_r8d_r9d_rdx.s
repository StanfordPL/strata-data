  .text
  .globl move_032_064_r8d_r9d_rdx
  .type move_032_064_r8d_r9d_rdx, @function
#! maybe-read { %r8d %r9d }
#! maybe-write { %rdx }
#! must-undef { %r14 %r15 }
.move_032_064_r8d_r9d_rdx:
  # ----------------------------------------------------------------------------
  # moves r8d and r9d to rdx.
  # ----------------------------------------------------------------------------
  pushfq
  movl %r9d, %r15d
  shlq $0x20, %r15
  movl %r8d, %r14d
  orq %r14, %r15
  movq %r15, %rdx
  popfq
  retq

.size move_032_064_r8d_r9d_rdx, .-move_032_064_r8d_r9d_rdx