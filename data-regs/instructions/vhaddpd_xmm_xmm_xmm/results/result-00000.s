  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpcklpd %xmm3, %xmm2, %xmm7  #  1     0    4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovhlps %xmm2, %xmm3, %xmm5   #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm   
  vaddpd %xmm5, %xmm7, %xmm1     #  3     0x8  4      OPC=vaddpd_xmm_xmm_xmm     
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
