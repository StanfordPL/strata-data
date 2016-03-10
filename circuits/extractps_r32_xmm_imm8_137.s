  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  pmovsxdq %xmm1, %xmm3          #  1     0    5      OPC=pmovsxdq_xmm_xmm       
  vunpckhpd %xmm1, %xmm3, %xmm8  #  2     0x5  4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovd %xmm8, %ebx              #  3     0x9  4      OPC=vmovd_r32_xmm          
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
