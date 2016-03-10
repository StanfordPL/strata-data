  .text
  .globl move_008_016_r12b_r13b_dx
  .type move_008_016_r12b_r13b_dx, @function
#! maybe-read { %r12b %r13b }
#! maybe-write { %dx }
#! must-undef { %r15 }
.move_008_016_r12b_r13b_dx:
  # ----------------------------------------------------------------------------
  # moves r12b and r13b to dx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r13b, %r15b
  shlq $0x8, %r15
  movb %r12b, %r15b
  movw %r15w, %dx
  popfq
  retq

.size move_008_016_r12b_r13b_dx, .-move_008_016_r12b_r13b_dx