  .text
  .globl move_008_016_r8b_r9b_bx
  .type move_008_016_r8b_r9b_bx, @function
#! maybe-read { %r8b %r9b }
#! maybe-write { %bx }
#! must-undef { %r15 }
.move_008_016_r8b_r9b_bx:
  # ----------------------------------------------------------------------------
  # moves r8b and r9b to bx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r9b, %r15b
  shlq $0x8, %r15
  movb %r8b, %r15b
  movw %r15w, %bx
  popfq
  retq

.size move_008_016_r8b_r9b_bx, .-move_008_016_r8b_r9b_bx