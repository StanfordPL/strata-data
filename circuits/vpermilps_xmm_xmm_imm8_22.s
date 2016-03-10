  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovups %xmm2, %xmm14            #  1     0     4      OPC=vmovups_xmm_xmm        
  vmovsldup %ymm14, %ymm11         #  2     0x4   5      OPC=vmovsldup_ymm_ymm      
  vunpcklps %ymm11, %ymm14, %ymm0  #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhps %xmm0, %xmm2, %xmm1    #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm1, %xmm0, %xmm1       #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                             #  6     0x16  1      OPC=retq                   
                                                                                    
.size target, .-target
