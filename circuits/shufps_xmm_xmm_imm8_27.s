  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label            
  vunpcklps %xmm4, %xmm5, %xmm13                  #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_byte_0_of_ymm1_to_r9b               #  3     0x9   5      OPC=callq_label            
  callq .move_r9b_to_byte_5_of_ymm1               #  4     0xe   5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  5     0x13  5      OPC=callq_label            
  vunpcklps %xmm10, %xmm11, %xmm12                #  6     0x18  5      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1             #  7     0x1d  5      OPC=callq_label            
  retq                                            #  8     0x22  1      OPC=retq                   
                                                                                                   
.size target, .-target
