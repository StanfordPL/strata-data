  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_032_016_ebx_r8w_r9w     #  1     0     5      OPC=callq_label      
  vmovapd %xmm2, %xmm1                #  2     0x5   4      OPC=vmovapd_xmm_xmm  
  callq .move_r9b_to_byte_14_of_ymm1  #  3     0x9   5      OPC=callq_label      
  callq .move_016_008_bx_r8b_r9b      #  4     0xe   5      OPC=callq_label      
  callq .move_r9b_to_byte_13_of_ymm1  #  5     0x13  5      OPC=callq_label      
  callq .move_r8b_to_byte_12_of_ymm1  #  6     0x18  5      OPC=callq_label      
  callq .move_byte_3_of_rbx_to_r9b    #  7     0x1d  5      OPC=callq_label      
  callq .move_r9b_to_byte_15_of_ymm1  #  8     0x22  5      OPC=callq_label      
  retq                                #  9     0x27  1      OPC=retq             
                                                                                 
.size target, .-target
