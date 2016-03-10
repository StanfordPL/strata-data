  .text
  .globl move_032_016_ecx_r8w_r9w
  .type move_032_016_ecx_r8w_r9w, @function
#! maybe-read { %ecx }
#! maybe-write { %r8w %r9w }
#! must-undef { %r15 }
.move_032_016_ecx_r8w_r9w:
  # ----------------------------------------------------------------------------
  # moves ecx to r8w and r9w.
  # ----------------------------------------------------------------------------
  pushfq
  movl %ecx, %r15d
  movw %r15w, %r8w
  shrq $0x10, %r15
  movw %r15w, %r9w
  popfq
  retq

.size move_032_016_ecx_r8w_r9w, .-move_032_016_ecx_r8w_r9w