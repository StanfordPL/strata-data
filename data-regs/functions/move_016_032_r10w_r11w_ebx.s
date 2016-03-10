  .text
  .globl move_016_032_r10w_r11w_ebx
  .type move_016_032_r10w_r11w_ebx, @function
#! maybe-read { %r10w %r11w }
#! maybe-write { %ebx }
#! must-undef { %r15 }
.move_016_032_r10w_r11w_ebx:
  # ----------------------------------------------------------------------------
  # moves r10w and r11w to ebx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r11w, %r15w
  shlq $0x10, %r15
  movw %r10w, %r15w
  movl %r15d, %ebx
  popfq
  retq

.size move_016_032_r10w_r11w_ebx, .-move_016_032_r10w_r11w_ebx