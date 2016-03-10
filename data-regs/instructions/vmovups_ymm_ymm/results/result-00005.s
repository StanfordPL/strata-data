  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vorpd %ymm2, %ymm2, %ymm1                 #  1     0     4      OPC=vorpd_ymm_ymm_ymm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label        
  callq .move_r9b_to_byte_12_of_ymm1        #  3     0x9   5      OPC=callq_label        
  callq .move_r8b_to_byte_8_of_ymm1         #  4     0xe   5      OPC=callq_label        
  retq                                      #  5     0x13  1      OPC=retq               
                                                                                         
.size target, .-target
