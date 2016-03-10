  .text
  .globl move_032_064_r10d_r11d_rbx
  .type move_032_064_r10d_r11d_rbx, @function
#! maybe-read { %r10d %r11d }
#! maybe-write { %rbx }
#! must-undef { %r14 %r15 }
.move_032_064_r10d_r11d_rbx:
  # ----------------------------------------------------------------------------
  # moves r10d and r11d to rbx.
  # ----------------------------------------------------------------------------
  pushfq
  movl %r11d, %r15d
  shlq $0x20, %r15
  movl %r10d, %r14d
  orq %r14, %r15
  movq %r15, %rbx
  popfq
  retq

.size move_032_064_r10d_r11d_rbx, .-move_032_064_r10d_r11d_rbx