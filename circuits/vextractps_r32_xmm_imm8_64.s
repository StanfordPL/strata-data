  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %ymm7  #  1     0     5      OPC=vbroadcastss_ymm_xmm  
  vpbroadcastd %xmm7, %ymm4  #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  vmovaps %ymm4, %ymm8       #  3     0xa   4      OPC=vmovaps_ymm_ymm       
  movd %xmm8, %ebx           #  4     0xe   5      OPC=movd_r32_xmm          
  retq                       #  5     0x13  1      OPC=retq                  
                                                                             
.size target, .-target
