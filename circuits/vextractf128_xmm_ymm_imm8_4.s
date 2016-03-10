  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vorpd %xmm1, %xmm1, %xmm1  #  1     0    4      OPC=vorpd_xmm_xmm_xmm  
  movss %xmm1, %xmm1         #  2     0x4  4      OPC=movss_xmm_xmm      
  retq                       #  3     0x8  1      OPC=retq               
                                                                         
.size target, .-target
