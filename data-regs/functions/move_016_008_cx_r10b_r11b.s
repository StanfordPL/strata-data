  .text
  .globl move_016_008_cx_r10b_r11b
  .type move_016_008_cx_r10b_r11b, @function
#! maybe-read { %cx }
#! maybe-write { %r10b %r11b }
#! must-undef { %r15 }
.move_016_008_cx_r10b_r11b:
  # ----------------------------------------------------------------------------
  # moves cx to r10b and r11b.
  # ----------------------------------------------------------------------------
  pushfq
  movw %cx, %r15w
  movb %r15b, %r10b
  shrq $0x8, %r15
  movb %r15b, %r11b
  popfq
  retq

.size move_016_008_cx_r10b_r11b, .-move_016_008_cx_r10b_r11b