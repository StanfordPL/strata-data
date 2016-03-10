  .text
  .globl move_008_016_r12b_r13b_cx
  .type move_008_016_r12b_r13b_cx, @function
#! maybe-read { %r12b %r13b }
#! maybe-write { %cx }
#! must-undef { %r15 }
.move_008_016_r12b_r13b_cx:
  # ----------------------------------------------------------------------------
  # moves r12b and r13b to cx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r13b, %r15b
  shlq $0x8, %r15
  movb %r12b, %r15b
  movw %r15w, %cx
  popfq
  retq

.size move_008_016_r12b_r13b_cx, .-move_008_016_r12b_r13b_cx