  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label      
  callq .move_064_128_r8_r9_xmm3     #  2     0x5   5      OPC=callq_label      
  movb %bl, %r9b                     #  3     0xa   3      OPC=movb_r8_r8       
  vmovups %xmm3, %xmm1               #  4     0xd   4      OPC=vmovups_xmm_xmm  
  callq .move_r9b_to_byte_3_of_ymm1  #  5     0x11  5      OPC=callq_label      
  retq                               #  6     0x16  1      OPC=retq             
                                                                                
.size target, .-target
