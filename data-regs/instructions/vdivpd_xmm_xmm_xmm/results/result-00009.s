  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovdqu %xmm2, %xmm12  #  1     0    4      OPC=vmovdqu_xmm_xmm  
  vmovupd %xmm12, %xmm1  #  2     0x4  5      OPC=vmovupd_xmm_xmm  
  divpd %xmm3, %xmm1     #  3     0x9  4      OPC=divpd_xmm_xmm    
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
