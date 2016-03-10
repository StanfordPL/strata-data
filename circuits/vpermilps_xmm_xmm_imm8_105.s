  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm10, %xmm9, %xmm9                 #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vorpd %xmm2, %xmm2, %xmm14                      #  3     0xa   4      OPC=vorpd_xmm_xmm_xmm       
  vmovlhps %xmm9, %xmm2, %xmm0                    #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm    
  vunpcklps %ymm14, %ymm9, %ymm2                  #  5     0x13  5      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm2, %ymm0, %ymm1                  #  6     0x18  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
