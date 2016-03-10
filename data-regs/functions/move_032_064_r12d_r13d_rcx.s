  .text
  .globl move_032_064_r12d_r13d_rcx
  .type move_032_064_r12d_r13d_rcx, @function
#! maybe-read { %r12d %r13d }
#! maybe-write { %rcx }
#! must-undef { %r14 %r15 }
.move_032_064_r12d_r13d_rcx:
  # ----------------------------------------------------------------------------
  # moves r12d and r13d to rcx.
  # ----------------------------------------------------------------------------
  pushfq
  movl %r13d, %r15d
  shlq $0x20, %r15
  movl %r12d, %r14d
  orq %r14, %r15
  movq %r15, %rcx
  popfq
  retq

.size move_032_064_r12d_r13d_rcx, .-move_032_064_r12d_r13d_rcx