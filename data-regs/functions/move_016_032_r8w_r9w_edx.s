  .text
  .globl move_016_032_r8w_r9w_edx
  .type move_016_032_r8w_r9w_edx, @function
#! maybe-read { %r8w %r9w }
#! maybe-write { %edx }
#! must-undef { %r15 }
.move_016_032_r8w_r9w_edx:
  # ----------------------------------------------------------------------------
  # moves r8w and r9w to edx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r9w, %r15w
  shlq $0x10, %r15
  movw %r8w, %r15w
  movl %r15d, %edx
  popfq
  retq

.size move_016_032_r8w_r9w_edx, .-move_016_032_r8w_r9w_edx