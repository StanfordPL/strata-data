  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vunpcklps %xmm7, %xmm4, %xmm7                   #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm   
  vminss %xmm8, %xmm8, %xmm5                      #  4     0xe   5      OPC=vminss_xmm_xmm_xmm      
  vpunpckldq %xmm8, %xmm11, %xmm4                 #  5     0x13  5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  6     0x18  5      OPC=callq_label             
  retq                                            #  7     0x1d  1      OPC=retq                    
                                                                                                    
.size target, .-target
