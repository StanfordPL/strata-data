  .text
  .globl move_032_064_r8d_r9d_rcx
  .type move_032_064_r8d_r9d_rcx, @function
#! maybe-read { %r8d %r9d }
#! maybe-write { %rcx }
#! must-undef { %r14 %r15 }
.move_032_064_r8d_r9d_rcx:
  # ----------------------------------------------------------------------------
  # moves r8d and r9d to rcx.
  # ----------------------------------------------------------------------------
  pushfq
  movl %r9d, %r15d
  shlq $0x20, %r15
  movl %r8d, %r14d
  orq %r14, %r15
  movq %r15, %rcx
  popfq
  retq

.size move_032_064_r8d_r9d_rcx, .-move_032_064_r8d_r9d_rcx