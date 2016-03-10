  .text
  .globl move_r9b_to_byte_2_of_rbx
  .type move_r9b_to_byte_2_of_rbx, @function
#! maybe-read { %r9b %ebx }
#! maybe-write { %ebx }
#! must-undef { %r14 %r15 }
.move_r9b_to_byte_2_of_rbx:
  # ----------------------------------------------------------------------------
  # move r9b to the byte 2 of rbx
  # ----------------------------------------------------------------------------
  #
  pushfq
  xorq %r15, %r15
  movb %r9b, %r15b
  shlq $0x10, %r15
  movq $0xff, %r14
  shlq $0x10, %r14
  notq %r14
  andq %r14, %rbx
  orq %r15, %rbx
  popfq
  retq

.size move_r9b_to_byte_2_of_rbx, .-move_r9b_to_byte_2_of_rbx
  retq

