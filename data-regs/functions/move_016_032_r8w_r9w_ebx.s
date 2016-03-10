  .text
  .globl move_016_032_r8w_r9w_ebx
  .type move_016_032_r8w_r9w_ebx, @function
#! maybe-read { %r8w %r9w }
#! maybe-write { %ebx }
#! must-undef { %r15 }
.move_016_032_r8w_r9w_ebx:
  # ----------------------------------------------------------------------------
  # moves r8w and r9w to ebx.
  # ----------------------------------------------------------------------------
  pushfq
  movw %r9w, %r15w
  shlq $0x10, %r15
  movw %r8w, %r15w
  movl %r15d, %ebx
  popfq
  retq

.size move_016_032_r8w_r9w_ebx, .-move_016_032_r8w_r9w_ebx