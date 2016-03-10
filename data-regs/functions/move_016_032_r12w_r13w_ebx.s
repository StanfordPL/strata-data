  .text
  .globl move_016_032_r12w_r13w_ebx
  .type move_016_032_r12w_r13w_ebx, @function
#! maybe-read { %r12w %r13w }
#! maybe-write { %ebx }
#! must-undef { %r15 }
.move_016_032_r12w_r13w_ebx:
  # ----------------------------------------------------------------------------
  # moves r12w and r13w to ebx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r13w, %r15w
  shlq $0x10, %r15
  movw %r12w, %r15w
  movl %r15d, %ebx
  popfq
  retq

.size move_016_032_r12w_r13w_ebx, .-move_016_032_r12w_r13w_ebx