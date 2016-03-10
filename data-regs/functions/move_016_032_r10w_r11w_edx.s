  .text
  .globl move_016_032_r10w_r11w_edx
  .type move_016_032_r10w_r11w_edx, @function
#! maybe-read { %r10w %r11w }
#! maybe-write { %edx }
#! must-undef { %r15 }
.move_016_032_r10w_r11w_edx:
  # ----------------------------------------------------------------------------
  # moves r10w and r11w to edx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r11w, %r15w
  shlq $0x10, %r15
  movw %r10w, %r15w
  movl %r15d, %edx
  popfq
  retq

.size move_016_032_r10w_r11w_edx, .-move_016_032_r10w_r11w_edx