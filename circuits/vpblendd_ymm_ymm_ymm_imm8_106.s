  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm3, %ymm8           #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vmovsldup %ymm2, %ymm9           #  2     0x4   4      OPC=vmovsldup_ymm_ymm       
  punpckhdq %xmm9, %xmm8           #  3     0x8   5      OPC=punpckhdq_xmm_xmm       
  vpunpckldq %ymm3, %ymm9, %ymm10  #  4     0xd   4      OPC=vpunpckldq_ymm_ymm_ymm  
  unpckhps %xmm3, %xmm2            #  5     0x11  3      OPC=unpckhps_xmm_xmm        
  vpunpckhdq %ymm2, %ymm8, %ymm6   #  6     0x14  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhpd %ymm6, %ymm10, %ymm1   #  7     0x18  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                             #  8     0x1c  1      OPC=retq                    
                                                                                     
.size target, .-target
