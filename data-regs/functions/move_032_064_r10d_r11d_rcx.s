  .text
  .globl move_032_064_r10d_r11d_rcx
  .type move_032_064_r10d_r11d_rcx, @function
#! maybe-read { %r10d %r11d }
#! maybe-write { %rcx }
#! must-undef { %r14 %r15 }
.move_032_064_r10d_r11d_rcx:
  # ----------------------------------------------------------------------------
  # moves r10d and r11d to rcx.
  # ----------------------------------------------------------------------------
  pushfq
  movl %r11d, %r15d
  shlq $0x20, %r15
  movl %r10d, %r14d
  orq %r14, %r15
  movq %r15, %rcx
  popfq
  retq

.size move_032_064_r10d_r11d_rcx, .-move_032_064_r10d_r11d_rcx