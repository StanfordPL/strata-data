  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm4, %xmm10, %xmm4                 #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vrsqrtps %xmm4, %xmm6                           #  4     0xe   4      OPC=vrsqrtps_xmm_xmm        
  vmovsldup %xmm8, %xmm0                          #  5     0x12  5      OPC=vmovsldup_xmm_xmm       
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  6     0x17  5      OPC=callq_label             
  unpcklps %xmm0, %xmm1                           #  7     0x1c  3      OPC=unpcklps_xmm_xmm        
  retq                                            #  8     0x1f  1      OPC=retq                    
                                                                                                    
.size target, .-target
