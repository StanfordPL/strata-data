  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm13  #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm2, %ymm2, %ymm5   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm13, %ymm13, %ymm3  #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhps %ymm3, %ymm5, %ymm15   #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm   
  vmovddup %ymm15, %ymm1           #  5     0x11  5      OPC=vmovddup_ymm_ymm        
  movdqu %xmm15, %xmm1             #  6     0x16  5      OPC=movdqu_xmm_xmm          
  retq                             #  7     0x1b  1      OPC=retq                    
                                                                                     
.size target, .-target
