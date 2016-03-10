  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vpbroadcastw %xmm2, %ymm3          #  1     0     5      OPC=vpbroadcastw_ymm_xmm  
  vmovss %xmm3, %xmm2, %xmm1         #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm    
  callq .move_byte_5_of_ymm1_to_r9b  #  3     0x9   5      OPC=callq_label           
  callq .move_r9b_to_byte_7_of_ymm1  #  4     0xe   5      OPC=callq_label           
  callq .move_byte_4_of_ymm1_to_r8b  #  5     0x13  5      OPC=callq_label           
  callq .move_r8b_to_byte_6_of_ymm1  #  6     0x18  5      OPC=callq_label           
  retq                               #  7     0x1d  1      OPC=retq                  
                                                                                     
.size target, .-target
