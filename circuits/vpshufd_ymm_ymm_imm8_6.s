  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm0           #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vunpcklps %ymm0, %ymm2, %ymm14   #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm   
  movhlps %xmm0, %xmm14            #  3     0x8   4      OPC=movhlps_xmm_xmm         
  vpunpckhdq %ymm14, %ymm0, %ymm1  #  4     0xc   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhps %ymm14, %ymm1, %ymm1   #  5     0x11  5      OPC=vunpckhps_ymm_ymm_ymm   
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
