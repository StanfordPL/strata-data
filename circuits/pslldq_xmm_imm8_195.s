  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vaddsubpd %xmm1, %xmm1, %xmm5  #  1     0    4      OPC=vaddsubpd_xmm_xmm_xmm  
  vcvtdq2pd %xmm5, %xmm3         #  2     0x4  4      OPC=vcvtdq2pd_xmm_xmm      
  pmovzxbq %xmm3, %xmm1          #  3     0x8  5      OPC=pmovzxbq_xmm_xmm       
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
