  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vpmovzxwd %xmm1, %ymm12          #  1     0    5      OPC=vpmovzxwd_ymm_xmm      
  vunpckhps %ymm12, %ymm12, %ymm3  #  2     0x5  5      OPC=vunpckhps_ymm_ymm_ymm  
  vmovd %xmm3, %ebx                #  3     0xa  4      OPC=vmovd_r32_xmm          
  retq                             #  4     0xe  1      OPC=retq                   
                                                                                   
.size target, .-target
