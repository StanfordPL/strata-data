  .text
  .globl move_byte_12_of_ymm1_to_r8b
  .type move_byte_12_of_ymm1_to_r8b, @function
#! maybe-read { %xmm1 }
#! maybe-write { %r8b }
#! must-undef { %ymm15 %r15 }
.move_byte_12_of_ymm1_to_r8b:
  # ----------------------------------------------------------------------------
  # move the byte 12 of ymm1 to r8b
  # ----------------------------------------------------------------------------
  #
  vmovupd %ymm1, %ymm15
  psrldq $0xc, %xmm15
  movq %xmm15, %r15
  movb %r15b, %r8b
  retq

.size move_byte_12_of_ymm1_to_r8b, .-move_byte_12_of_ymm1_to_r8b
  retq

