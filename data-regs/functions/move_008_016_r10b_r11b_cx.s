  .text
  .globl move_008_016_r10b_r11b_cx
  .type move_008_016_r10b_r11b_cx, @function
#! maybe-read { %r10b %r11b }
#! maybe-write { %cx }
#! must-undef { %r15 }
.move_008_016_r10b_r11b_cx:
  # ----------------------------------------------------------------------------
  # moves r10b and r11b to cx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r11b, %r15b
  shlq $0x8, %r15
  movb %r10b, %r15b
  movw %r15w, %cx
  popfq
  retq

.size move_008_016_r10b_r11b_cx, .-move_008_016_r10b_r11b_cx