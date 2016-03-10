  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  rcpps %xmm1, %xmm8           #  1     0    4      OPC=rcpps_xmm_xmm        
  vandnpd %xmm8, %xmm8, %xmm7  #  2     0x4  5      OPC=vandnpd_xmm_xmm_xmm  
  movdqu %xmm7, %xmm1          #  3     0x9  4      OPC=movdqu_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
