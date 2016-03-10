  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  phaddd %xmm3, %xmm2                 #  1     0     5      OPC=phaddd_xmm_xmm   
  vmovaps %xmm2, %xmm1                #  2     0x5   4      OPC=vmovaps_xmm_xmm  
  callq .move_byte_31_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label      
  callq .move_r8b_to_byte_22_of_ymm1  #  4     0xe   5      OPC=callq_label      
  retq                                #  5     0x13  1      OPC=retq             
                                                                                 
.size target, .-target
