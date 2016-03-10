  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_016_008_bx_r8b_r9b      #  1     0     5      OPC=callq_label      
  vmovapd %xmm2, %xmm1                #  2     0x5   4      OPC=vmovapd_xmm_xmm  
  callq .move_r9b_to_byte_11_of_ymm1  #  3     0x9   5      OPC=callq_label      
  callq .move_r8b_to_byte_10_of_ymm1  #  4     0xe   5      OPC=callq_label      
  retq                                #  5     0x13  1      OPC=retq             
                                                                                 
.size target, .-target
