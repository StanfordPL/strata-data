  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  vmovdqa %xmm2, %xmm1               #  1     0    4      OPC=vmovdqa_xmm_xmm  
  movb %bl, %r9b                     #  2     0x4  3      OPC=movb_r8_r8       
  callq .move_r9b_to_byte_4_of_ymm1  #  3     0x7  5      OPC=callq_label      
  retq                               #  4     0xc  1      OPC=retq             
                                                                               
.size target, .-target
