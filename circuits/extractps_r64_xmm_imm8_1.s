  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vpmovsxdq %xmm1, %ymm7         #  1     0    5      OPC=vpmovsxdq_ymm_xmm      
  vunpckhps %xmm7, %xmm7, %xmm9  #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm  
  movd %xmm9, %ebx               #  3     0x9  5      OPC=movd_r32_xmm           
  retq                           #  4     0xe  1      OPC=retq                   
                                                                                 
.size target, .-target
