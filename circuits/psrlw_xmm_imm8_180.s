  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vpxor %xmm2, %xmm2, %xmm9  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  pmovzxbq %xmm9, %xmm1      #  2     0x4  6      OPC=pmovzxbq_xmm_xmm   
  retq                       #  3     0xa  1      OPC=retq               
                                                                         
.size target, .-target
