  .text
  .globl move_016_032_r12w_r13w_edx
  .type move_016_032_r12w_r13w_edx, @function
#! maybe-read { %r12w %r13w }
#! maybe-write { %edx }
#! must-undef { %r15 }
.move_016_032_r12w_r13w_edx:
  # ----------------------------------------------------------------------------
  # moves r12w and r13w to edx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r13w, %r15w
  shlq $0x10, %r15
  movw %r12w, %r15w
  movl %r15d, %edx
  popfq
  retq

.size move_016_032_r12w_r13w_edx, .-move_016_032_r12w_r13w_edx