  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnpd %xmm1, %xmm1, %xmm2  #  1     0    4      OPC=vandnpd_xmm_xmm_xmm  
  pmovzxbq %xmm2, %xmm1        #  2     0x4  5      OPC=pmovzxbq_xmm_xmm     
  retq                         #  3     0x9  1      OPC=retq                 
                                                                             
.size target, .-target
