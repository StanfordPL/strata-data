  .text
  .globl move_008_016_r12b_r13b_bx
  .type move_008_016_r12b_r13b_bx, @function
#! maybe-read { %r12b %r13b }
#! maybe-write { %bx }
#! must-undef { %r15 }
.move_008_016_r12b_r13b_bx:
  # ----------------------------------------------------------------------------
  # moves r12b and r13b to bx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r13b, %r15b
  shlq $0x8, %r15
  movb %r12b, %r15b
  movw %r15w, %bx
  popfq
  retq

.size move_008_016_r12b_r13b_bx, .-move_008_016_r12b_r13b_bx