  .text
  .globl move_016_008_dx_r12b_r13b
  .type move_016_008_dx_r12b_r13b, @function
#! maybe-read { %dx }
#! maybe-write { %r12b %r13b }
#! must-undef { %r15 }
.move_016_008_dx_r12b_r13b:
  # ----------------------------------------------------------------------------
  # moves dx to r12b and r13b.
  # ----------------------------------------------------------------------------
  pushfq
  movw %dx, %r15w
  movb %r15b, %r12b
  shrq $0x8, %r15
  movb %r15b, %r13b
  popfq
  retq

.size move_016_008_dx_r12b_r13b, .-move_016_008_dx_r12b_r13b