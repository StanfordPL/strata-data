  .text
  .globl move_r8b_to_byte_6_of_rbx
  .type move_r8b_to_byte_6_of_rbx, @function
#! maybe-read { %r8b %rbx }
#! maybe-write { %rbx }
#! must-undef { %r14 %r15 }
.move_r8b_to_byte_6_of_rbx:
  # ----------------------------------------------------------------------------
  # move r8b to the byte 6 of rbx
  # ----------------------------------------------------------------------------
  #
  pushfq
  xorq %r15, %r15
  movb %r8b, %r15b
  shlq $0x30, %r15
  movq $0xff, %r14
  shlq $0x30, %r14
  notq %r14
  andq %r14, %rbx
  orq %r15, %rbx
  popfq
  retq

.size move_r8b_to_byte_6_of_rbx, .-move_r8b_to_byte_6_of_rbx
  retq

