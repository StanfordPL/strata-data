  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm7  #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovd %xmm7, %r14d             #  2     0x4  5      OPC=vmovd_r32_xmm          
  movl %r14d, %ebx               #  3     0x9  3      OPC=movl_r32_r32           
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
