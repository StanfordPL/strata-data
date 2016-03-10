  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpcklps %xmm2, %xmm1, %xmm6    #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm   
  vaddss %xmm1, %xmm6, %xmm0       #  2     0x4   4      OPC=vaddss_xmm_xmm_xmm      
  vpunpckhdq %ymm6, %ymm0, %ymm14  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  movsldup %xmm14, %xmm1           #  4     0xc   5      OPC=movsldup_xmm_xmm        
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
