  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  pmovzxdq %xmm2, %xmm0          #  1     0    5      OPC=pmovzxdq_xmm_xmm       
  vunpckhps %xmm1, %xmm0, %xmm9  #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm  
  pmovzxdq %xmm9, %xmm1          #  3     0x9  6      OPC=pmovzxdq_xmm_xmm       
  retq                           #  4     0xf  1      OPC=retq                   
                                                                                 
.size target, .-target
