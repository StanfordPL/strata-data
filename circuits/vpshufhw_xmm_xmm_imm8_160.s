  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vorps %xmm2, %xmm2, %xmm1                 #  1     0     4      OPC=vorps_xmm_xmm_xmm  
  callq .move_byte_9_of_ymm1_to_r9b         #  2     0x4   5      OPC=callq_label        
  callq .move_r9b_to_byte_11_of_ymm1        #  3     0x9   5      OPC=callq_label        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xe   5      OPC=callq_label        
  callq .move_r9b_to_byte_14_of_ymm1        #  5     0x13  5      OPC=callq_label        
  callq .move_byte_13_of_ymm1_to_r9b        #  6     0x18  5      OPC=callq_label        
  callq .move_r9b_to_byte_15_of_ymm1        #  7     0x1d  5      OPC=callq_label        
  callq .move_r8b_to_byte_10_of_ymm1        #  8     0x22  5      OPC=callq_label        
  retq                                      #  9     0x27  1      OPC=retq               
                                                                                         
.size target, .-target
