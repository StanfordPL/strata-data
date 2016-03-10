  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  movd %ebx, %xmm4               #  1     0    4      OPC=movd_xmm_r32           
  vunpcklps %xmm4, %xmm1, %xmm8  #  2     0x4  4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm8, %xmm1             #  3     0x8  5      OPC=movsd_xmm_xmm          
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
