  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovsldup %ymm2, %ymm13         #  1     0     4      OPC=vmovsldup_ymm_ymm      
  vunpckhpd %ymm13, %ymm2, %ymm1  #  2     0x4   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklps %ymm1, %ymm13, %ymm7  #  3     0x9   4      OPC=vunpcklps_ymm_ymm_ymm  
  vmovdqu %ymm1, %ymm5            #  4     0xd   4      OPC=vmovdqu_ymm_ymm        
  vunpckhpd %ymm5, %ymm7, %ymm1   #  5     0x11  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
