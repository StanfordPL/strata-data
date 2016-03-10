  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm8           #  1     0     4      OPC=vmovshdup_xmm_xmm       
  vpunpckhdq %xmm8, %xmm8, %xmm3   #  2     0x4   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %ymm8, %ymm3, %ymm14   #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %xmm14, %xmm8, %xmm1  #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                             #  5     0x13  1      OPC=retq                    
                                                                                     
.size target, .-target
