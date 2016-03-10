  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm2, %xmm2, %xmm1       #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_byte_6_of_ymm1_to_r9b   #  3     0x9   5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1      #  4     0xe   5      OPC=callq_label            
  callq .move_byte_15_of_ymm1_to_r9b  #  5     0x13  5      OPC=callq_label            
  callq .move_r9b_to_byte_9_of_ymm1   #  6     0x18  5      OPC=callq_label            
  retq                                #  7     0x1d  1      OPC=retq                   
                                                                                       
.size target, .-target
