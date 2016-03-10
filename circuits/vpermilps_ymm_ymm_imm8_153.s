  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmaxpd %ymm2, %ymm2, %ymm3      #  1     0     4      OPC=vmaxpd_ymm_ymm_ymm      
  vrsqrtps %xmm3, %xmm10          #  2     0x4   4      OPC=vrsqrtps_xmm_xmm        
  vunpckhps %ymm2, %ymm10, %ymm6  #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %ymm6, %ymm3, %ymm0   #  4     0xc   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm3, %ymm0, %ymm2  #  5     0x10  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovddup %ymm2, %ymm1           #  6     0x14  4      OPC=vmovddup_ymm_ymm        
  retq                            #  7     0x18  1      OPC=retq                    
                                                                                    
.size target, .-target
