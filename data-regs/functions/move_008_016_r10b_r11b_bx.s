  .text
  .globl move_008_016_r10b_r11b_bx
  .type move_008_016_r10b_r11b_bx, @function
#! maybe-read { %r10b %r11b }
#! maybe-write { %bx }
#! must-undef { %r15 }
.move_008_016_r10b_r11b_bx:
  # ----------------------------------------------------------------------------
  # moves r10b and r11b to bx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r11b, %r15b
  shlq $0x8, %r15
  movb %r10b, %r15b
  movw %r15w, %bx
  popfq
  retq

.size move_008_016_r10b_r11b_bx, .-move_008_016_r10b_r11b_bx