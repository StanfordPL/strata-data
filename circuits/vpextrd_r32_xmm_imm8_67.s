  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm1  #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  pmovsxwq %xmm1, %xmm2          #  2     0x4   5      OPC=pmovsxwq_xmm_xmm       
  vunpckhpd %xmm2, %xmm1, %xmm8  #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovd %xmm8, %ebx              #  4     0xd   4      OPC=vmovd_r32_xmm          
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
