  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_016_008_bx_r8b_r9b     #  1     0     5      OPC=callq_label  
  callq .move_128_064_xmm2_r12_r13   #  2     0x5   5      OPC=callq_label  
  vzeroall                           #  3     0xa   3      OPC=vzeroall     
  callq .move_064_128_r12_r13_xmm1   #  4     0xd   5      OPC=callq_label  
  callq .move_r9b_to_byte_3_of_ymm1  #  5     0x12  5      OPC=callq_label  
  callq .move_r8b_to_byte_2_of_ymm1  #  6     0x17  5      OPC=callq_label  
  retq                               #  7     0x1c  1      OPC=retq         
                                                                            
.size target, .-target
