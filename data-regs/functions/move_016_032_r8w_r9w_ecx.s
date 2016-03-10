  .text
  .globl move_016_032_r8w_r9w_ecx
  .type move_016_032_r8w_r9w_ecx, @function
#! maybe-read { %r8w %r9w }
#! maybe-write { %ecx }
#! must-undef { %r15 }
.move_016_032_r8w_r9w_ecx:
  # ----------------------------------------------------------------------------
  # moves r8w and r9w to ecx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r9w, %r15w
  shlq $0x10, %r15
  movw %r8w, %r15w
  movl %r15d, %ecx
  popfq
  retq

.size move_016_032_r8w_r9w_ecx, .-move_016_032_r8w_r9w_ecx