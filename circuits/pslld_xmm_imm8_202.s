  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                   
.target:                         #        0    0      OPC=<label>              
  vxorpd %xmm1, %xmm1, %xmm10    #  1     0    4      OPC=vxorpd_xmm_xmm_xmm   
  vhaddps %xmm10, %xmm10, %xmm5  #  2     0x4  5      OPC=vhaddps_xmm_xmm_xmm  
  movddup %xmm5, %xmm1           #  3     0x9  4      OPC=movddup_xmm_xmm      
  retq                           #  4     0xd  1      OPC=retq                 
                                                                               
.size target, .-target
