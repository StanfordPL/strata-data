  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  movd %ebx, %xmm9                  #  1     0     5      OPC=movd_xmm_r32           
  vmovups %xmm1, %xmm12             #  2     0x5   4      OPC=vmovups_xmm_xmm        
  vunpckhps %ymm12, %ymm12, %ymm11  #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm  
  vbroadcastss %xmm9, %ymm9         #  4     0xe   5      OPC=vbroadcastss_ymm_xmm   
  unpckhps %xmm11, %xmm9            #  5     0x13  4      OPC=unpckhps_xmm_xmm       
  unpcklpd %xmm9, %xmm1             #  6     0x17  5      OPC=unpcklpd_xmm_xmm       
  retq                              #  7     0x1c  1      OPC=retq                   
                                                                                     
.size target, .-target
