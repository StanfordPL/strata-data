  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vunpcklps %xmm6, %xmm5, %xmm4                 #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpmovzxdq %xmm2, %ymm15                       #  3     0x9   5      OPC=vpmovzxdq_ymm_xmm       
  vbroadcastss %xmm15, %xmm2                    #  4     0xe   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckldq %ymm2, %ymm4, %ymm1                #  5     0x13  4      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
