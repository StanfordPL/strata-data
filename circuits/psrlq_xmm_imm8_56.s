  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  movdqu %xmm1, %xmm2                             #  1     0     4      OPC=movdqu_xmm_xmm    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label       
  callq .move_byte_15_of_ymm1_to_r8b              #  3     0x9   5      OPC=callq_label       
  pmovzxbq %xmm8, %xmm5                           #  4     0xe   6      OPC=pmovzxbq_xmm_xmm  
  callq .move_byte_7_of_ymm1_to_r9b               #  5     0x14  5      OPC=callq_label       
  pand %xmm5, %xmm1                               #  6     0x19  4      OPC=pand_xmm_xmm      
  callq .move_r9b_to_byte_0_of_ymm1               #  7     0x1d  5      OPC=callq_label       
  callq .move_r8b_to_byte_8_of_ymm1               #  8     0x22  5      OPC=callq_label       
  retq                                            #  9     0x27  1      OPC=retq              
                                                                                              
.size target, .-target
