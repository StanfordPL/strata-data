  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm14     #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm2, %ymm2, %ymm6  #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  unpcklpd %xmm14, %xmm2         #  3     0x9   5      OPC=unpcklpd_xmm_xmm       
  vunpckhpd %ymm6, %ymm2, %ymm0  #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovddup %ymm0, %ymm1          #  5     0x12  4      OPC=vmovddup_ymm_ymm       
  retq                           #  6     0x16  1      OPC=retq                   
                                                                                  
.size target, .-target
