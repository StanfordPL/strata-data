  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtps2pd %xmm2, %ymm1         #  1     0     4      OPC=vcvtps2pd_ymm_xmm      
  vmovapd %ymm1, %ymm4           #  2     0x4   4      OPC=vmovapd_ymm_ymm        
  vunpcklps %ymm2, %ymm4, %ymm3  #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm  
  vmovshdup %ymm3, %ymm1         #  4     0xc   4      OPC=vmovshdup_ymm_ymm      
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
