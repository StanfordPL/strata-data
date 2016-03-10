  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  vandnps %xmm3, %xmm2, %xmm1         #  1     0     4      OPC=vandnps_xmm_xmm_xmm  
  callq .move_byte_20_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label          
  callq .move_r8b_to_byte_29_of_ymm1  #  3     0x9   5      OPC=callq_label          
  callq .move_r8b_to_byte_19_of_ymm1  #  4     0xe   5      OPC=callq_label          
  callq .move_r8b_to_byte_24_of_ymm1  #  5     0x13  5      OPC=callq_label          
  retq                                #  6     0x18  1      OPC=retq                 
                                                                                     
.size target, .-target
