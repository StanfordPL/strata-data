  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqu %ymm3, %ymm0            #  1     0     4      OPC=vmovdqu_ymm_ymm        
  vunpckhps %ymm3, %ymm2, %ymm13  #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhps %ymm13, %ymm0, %ymm6  #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm  
  vmaxpd %ymm3, %ymm3, %ymm1      #  4     0xd   4      OPC=vmaxpd_ymm_ymm_ymm     
  movss %xmm2, %xmm1              #  5     0x11  4      OPC=movss_xmm_xmm          
  unpcklpd %xmm6, %xmm1           #  6     0x15  4      OPC=unpcklpd_xmm_xmm       
  retq                            #  7     0x19  1      OPC=retq                   
                                                                                   
.size target, .-target
