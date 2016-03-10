  .text
  .globl move_016_008_bx_r8b_r9b
  .type move_016_008_bx_r8b_r9b, @function
#! maybe-read { %bx }
#! maybe-write { %r8b %r9b }
#! must-undef { %r15 }
.move_016_008_bx_r8b_r9b:
  # ----------------------------------------------------------------------------
  # moves bx to r8b and r9b.
  # ----------------------------------------------------------------------------
  pushfq
  movw %bx, %r15w
  movb %r15b, %r8b
  shrq $0x8, %r15
  movb %r15b, %r9b
  popfq
  retq

.size move_016_008_bx_r8b_r9b, .-move_016_008_bx_r8b_r9b