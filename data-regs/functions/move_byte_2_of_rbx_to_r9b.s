  .text
  .globl move_byte_2_of_rbx_to_r9b
  .type move_byte_2_of_rbx_to_r9b, @function
#! maybe-read { %ebx }
#! maybe-write { %r9b }
#! must-undef { %r15 }
.move_byte_2_of_rbx_to_r9b:
  # ----------------------------------------------------------------------------
  # move the byte 2 of rbx to r9b
  # ----------------------------------------------------------------------------
  #
  pushfq
  movq %rbx, %r15
  shrq $0x10, %r15
  movb %r15b, %r9b
  popfq
  retq

.size move_byte_2_of_rbx_to_r9b, .-move_byte_2_of_rbx_to_r9b
  retq

