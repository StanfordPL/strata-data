  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm9           #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm3, %ymm9, %ymm10  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhpd %ymm2, %ymm10, %ymm8   #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovss %xmm3, %xmm2, %xmm2       #  4     0xc   4      OPC=vmovss_xmm_xmm_xmm      
  movddup %xmm2, %xmm3             #  5     0x10  4      OPC=movddup_xmm_xmm         
  vunpcklpd %ymm8, %ymm3, %ymm1    #  6     0x14  5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  7     0x19  1      OPC=retq                    
                                                                                     
.size target, .-target
