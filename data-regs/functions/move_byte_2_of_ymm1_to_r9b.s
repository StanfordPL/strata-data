  .text
  .globl move_byte_2_of_ymm1_to_r9b
  .type move_byte_2_of_ymm1_to_r9b, @function
#! maybe-read { %xmm1 }
#! maybe-write { %r9b }
#! must-undef { %ymm15 %r15 }
.move_byte_2_of_ymm1_to_r9b:
  # ----------------------------------------------------------------------------
  # move the byte 2 of ymm1 to r9b
  # ----------------------------------------------------------------------------
  #
  vmovupd %ymm1, %ymm15
  psrldq $0x2, %xmm15
  movq %xmm15, %r15
  movb %r15b, %r9b
  retq

.size move_byte_2_of_ymm1_to_r9b, .-move_byte_2_of_ymm1_to_r9b
  retq

