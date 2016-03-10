  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm4            #  1     0     4      OPC=vmovddup_ymm_ymm        
  vunpcklps %ymm2, %ymm3, %ymm1    #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm3, %ymm1, %ymm12  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm2, %ymm3, %ymm11  #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhps %ymm4, %ymm11, %ymm13  #  5     0x10  4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklpd %ymm13, %ymm12, %ymm2  #  6     0x14  5      OPC=vunpcklpd_ymm_ymm_ymm   
  vmovaps %ymm2, %ymm1             #  7     0x19  4      OPC=vmovaps_ymm_ymm         
  retq                             #  8     0x1d  1      OPC=retq                    
                                                                                     
.size target, .-target
