  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm7           #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckldq %ymm7, %ymm7, %ymm14  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm14, %ymm2, %ymm5   #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm   
  vmovapd %ymm5, %ymm1             #  4     0xd   4      OPC=vmovapd_ymm_ymm         
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
