  .text
  .globl move_008_016_r10b_r11b_dx
  .type move_008_016_r10b_r11b_dx, @function
#! maybe-read { %r10b %r11b }
#! maybe-write { %dx }
#! must-undef { %r15 }
.move_008_016_r10b_r11b_dx:
  # ----------------------------------------------------------------------------
  # moves r10b and r11b to dx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r11b, %r15b
  shlq $0x8, %r15
  movb %r10b, %r15b
  movw %r15w, %dx
  popfq
  retq

.size move_008_016_r10b_r11b_dx, .-move_008_016_r10b_r11b_dx