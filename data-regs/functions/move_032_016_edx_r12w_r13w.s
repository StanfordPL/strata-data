  .text
  .globl move_032_016_edx_r12w_r13w
  .type move_032_016_edx_r12w_r13w, @function
#! maybe-read { %edx }
#! maybe-write { %r12w %r13w }
#! must-undef { %r15 }
.move_032_016_edx_r12w_r13w:
  # ----------------------------------------------------------------------------
  # moves edx to r12w and r13w.
  # ----------------------------------------------------------------------------
  pushfq
  movl %edx, %r15d
  movw %r15w, %r12w
  shrq $0x10, %r15
  movw %r15w, %r13w
  popfq
  retq

.size move_032_016_edx_r12w_r13w, .-move_032_016_edx_r12w_r13w