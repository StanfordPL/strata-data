  .text
  .globl move_008_016_r8b_r9b_cx
  .type move_008_016_r8b_r9b_cx, @function
#! maybe-read { %r8b %r9b }
#! maybe-write { %cx }
#! must-undef { %r15 }
.move_008_016_r8b_r9b_cx:
  # ----------------------------------------------------------------------------
  # moves r8b and r9b to cx.
  # ----------------------------------------------------------------------------
  pushfq
  movb %r9b, %r15b
  shlq $0x8, %r15
  movb %r8b, %r15b
  movw %r15w, %cx
  popfq
  retq

.size move_008_016_r8b_r9b_cx, .-move_008_016_r8b_r9b_cx