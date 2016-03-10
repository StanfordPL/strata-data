  .text
  .globl move_008_016_r8b_r9b_dx
  .type move_008_016_r8b_r9b_dx, @function
#! maybe-read { %r8b %r9b }
#! maybe-write { %dx }
#! must-undef { %r15 }
.move_008_016_r8b_r9b_dx:
  # ----------------------------------------------------------------------------
  # moves r8b and r9b to dx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r9b, %r15b
  shlq $0x8, %r15
  movb %r8b, %r15b
  movw %r15w, %dx
  popfq
  retq

.size move_008_016_r8b_r9b_dx, .-move_008_016_r8b_r9b_dx