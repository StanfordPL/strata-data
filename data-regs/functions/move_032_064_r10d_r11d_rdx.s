  .text
  .globl move_032_064_r10d_r11d_rdx
  .type move_032_064_r10d_r11d_rdx, @function
#! maybe-read { %r10d %r11d }
#! maybe-write { %rdx }
#! must-undef { %r14 %r15 }
.move_032_064_r10d_r11d_rdx:
  # ----------------------------------------------------------------------------
  # moves r10d and r11d to rdx.
  # ----------------------------------------------------------------------------
  pushfq
  movl %r11d, %r15d
  shlq $0x20, %r15
  movl %r10d, %r14d
  orq %r14, %r15
  movq %r15, %rdx
  popfq
  retq

.size move_032_064_r10d_r11d_rdx, .-move_032_064_r10d_r11d_rdx