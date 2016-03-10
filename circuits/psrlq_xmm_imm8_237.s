  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm4  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  vhsubpd %xmm1, %xmm4, %xmm7  #  2     0x4  4      OPC=vhsubpd_xmm_xmm_xmm  
  movddup %xmm7, %xmm1         #  3     0x8  4      OPC=movddup_xmm_xmm      
  retq                         #  4     0xc  1      OPC=retq                 
                                                                             
.size target, .-target
