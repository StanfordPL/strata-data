  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %ymm10        #  1     0     5      OPC=vbroadcastss_ymm_xmm    
  vpunpckldq %ymm10, %ymm2, %ymm14  #  2     0x5   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm14, %ymm2, %ymm9   #  3     0xa   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhps %ymm10, %ymm9, %ymm15   #  4     0xf   5      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %ymm14, %ymm15, %ymm3   #  5     0x14  5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklpd %ymm3, %ymm2, %ymm1     #  6     0x19  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                              #  7     0x1d  1      OPC=retq                    
                                                                                      
.size target, .-target
