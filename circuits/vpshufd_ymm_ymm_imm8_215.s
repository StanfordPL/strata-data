  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpandn %xmm2, %xmm2, %xmm14      #  1     0     4      OPC=vpandn_xmm_xmm_xmm      
  vmovshdup %ymm2, %ymm1           #  2     0x4   4      OPC=vmovshdup_ymm_ymm       
  vunpckhpd %ymm14, %ymm1, %ymm13  #  3     0x8   5      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpckldq %ymm13, %ymm1, %ymm7  #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklps %ymm1, %ymm13, %ymm5   #  5     0x12  4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklpd %ymm7, %ymm5, %ymm1    #  6     0x16  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  7     0x1a  1      OPC=retq                    
                                                                                     
.size target, .-target
