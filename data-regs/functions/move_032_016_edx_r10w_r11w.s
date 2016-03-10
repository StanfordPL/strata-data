  .text
  .globl move_032_016_edx_r10w_r11w
  .type move_032_016_edx_r10w_r11w, @function
#! maybe-read { %edx }
#! maybe-write { %r10w %r11w }
#! must-undef { %r15 }
.move_032_016_edx_r10w_r11w:
  # ----------------------------------------------------------------------------
  # moves edx to r10w and r11w.
  # ----------------------------------------------------------------------------
  pushfq
  movl %edx, %r15d
  movw %r15w, %r10w
  shrq $0x10, %r15
  movw %r15w, %r11w
  popfq
  retq

.size move_032_016_edx_r10w_r11w, .-move_032_016_edx_r10w_r11w