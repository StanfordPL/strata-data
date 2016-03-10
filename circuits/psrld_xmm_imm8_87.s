  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm7  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  pmovzxwd %xmm7, %xmm1        #  2     0x4  5      OPC=pmovzxwd_xmm_xmm     
  retq                         #  3     0x9  1      OPC=retq                 
                                                                             
.size target, .-target