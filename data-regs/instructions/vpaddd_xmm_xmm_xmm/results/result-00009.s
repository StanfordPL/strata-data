  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  vcvtdq2pd %xmm3, %xmm6     #  1     0     4      OPC=vcvtdq2pd_xmm_xmm  
  paddd %xmm2, %xmm3         #  2     0x4   4      OPC=paddd_xmm_xmm      
  vpmovzxbq %xmm6, %xmm8     #  3     0x8   5      OPC=vpmovzxbq_xmm_xmm  
  vorps %xmm3, %xmm8, %xmm1  #  4     0xd   4      OPC=vorps_xmm_xmm_xmm  
  retq                       #  5     0x11  1      OPC=retq               
                                                                          
.size target, .-target
