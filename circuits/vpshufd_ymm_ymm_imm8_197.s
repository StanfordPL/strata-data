  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm11          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vunpcklpd %ymm2, %ymm2, %ymm5    #  2     0x4   4      OPC=vunpcklpd_ymm_ymm_ymm   
  vpunpckhdq %ymm11, %ymm5, %ymm0  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm0, %ymm11, %ymm1   #  4     0xd   4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
