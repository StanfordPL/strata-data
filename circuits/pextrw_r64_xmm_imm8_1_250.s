  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vpmovzxwd %xmm1, %ymm2         #  1     0    5      OPC=vpmovzxwd_ymm_xmm      
  vunpckhpd %ymm2, %ymm2, %ymm7  #  2     0x5  4      OPC=vunpckhpd_ymm_ymm_ymm  
  movd %xmm7, %ebx               #  3     0x9  4      OPC=movd_r32_xmm           
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
