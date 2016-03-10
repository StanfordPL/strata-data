  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm7  #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovddup %ymm7, %ymm14         #  2     0x4  4      OPC=vmovddup_ymm_ymm       
  vmovd %xmm14, %ebx             #  3     0x8  4      OPC=vmovd_r32_xmm          
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
