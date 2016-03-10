  .text
  .globl move_064_032_rbx_r10d_r11d
  .type move_064_032_rbx_r10d_r11d, @function
#! maybe-read { %rbx }
#! maybe-write { %r10d %r11d }
#! must-undef { %r15 }
.move_064_032_rbx_r10d_r11d:
  # ----------------------------------------------------------------------------
  # moves rbx to r10d and r11d.
  # ----------------------------------------------------------------------------
  pushfq
  movq %rbx, %r15
  movl %r15d, %r10d
  shrq $0x20, %r15
  movl %r15d, %r11d
  popfq
  retq

.size move_064_032_rbx_r10d_r11d, .-move_064_032_rbx_r10d_r11d