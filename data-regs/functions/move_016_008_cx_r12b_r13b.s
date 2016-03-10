  .text
  .globl move_016_008_cx_r12b_r13b
  .type move_016_008_cx_r12b_r13b, @function
#! maybe-read { %cx }
#! maybe-write { %r12b %r13b }
#! must-undef { %r15 }
.move_016_008_cx_r12b_r13b:
  # ----------------------------------------------------------------------------
  # moves cx to r12b and r13b.
  # ----------------------------------------------------------------------------
  pushfq
  movw %cx, %r15w
  movb %r15b, %r12b
  shrq $0x8, %r15
  movb %r15b, %r13b
  popfq
  retq

.size move_016_008_cx_r12b_r13b, .-move_016_008_cx_r12b_r13b