  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpmovzxdq %xmm11, %xmm1                         #  2     0x5   5      OPC=vpmovzxdq_xmm_xmm   
  vaddss %xmm1, %xmm2, %xmm12                     #  3     0xa   4      OPC=vaddss_xmm_xmm_xmm  
  unpcklps %xmm12, %xmm2                          #  4     0xe   4      OPC=unpcklps_xmm_xmm    
  punpckhdq %xmm12, %xmm2                         #  5     0x12  5      OPC=punpckhdq_xmm_xmm   
  vmovsldup %ymm1, %ymm1                          #  6     0x17  4      OPC=vmovsldup_ymm_ymm   
  punpckldq %xmm2, %xmm1                          #  7     0x1b  4      OPC=punpckldq_xmm_xmm   
  retq                                            #  8     0x1f  1      OPC=retq                
                                                                                                
.size target, .-target
