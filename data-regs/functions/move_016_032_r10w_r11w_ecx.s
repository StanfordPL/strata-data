  .text
  .globl move_016_032_r10w_r11w_ecx
  .type move_016_032_r10w_r11w_ecx, @function
#! maybe-read { %r10w %r11w }
#! maybe-write { %ecx }
#! must-undef { %r15 }
.move_016_032_r10w_r11w_ecx:
  # ----------------------------------------------------------------------------
  # moves r10w and r11w to ecx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r11w, %r15w
  shlq $0x10, %r15
  movw %r10w, %r15w
  movl %r15d, %ecx
  popfq
  retq

.size move_016_032_r10w_r11w_ecx, .-move_016_032_r10w_r11w_ecx