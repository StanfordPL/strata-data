  .text
  .globl move_016_032_r12w_r13w_ecx
  .type move_016_032_r12w_r13w_ecx, @function
#! maybe-read { %r12w %r13w }
#! maybe-write { %ecx }
#! must-undef { %r15 }
.move_016_032_r12w_r13w_ecx:
  # ----------------------------------------------------------------------------
  # moves r12w and r13w to ecx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r13w, %r15w
  shlq $0x10, %r15
  movw %r12w, %r15w
  movl %r15d, %ecx
  popfq
  retq

.size move_016_032_r12w_r13w_ecx, .-move_016_032_r12w_r13w_ecx