  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vpxor %xmm1, %xmm1, %xmm6  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  vcvtps2dq %xmm6, %xmm11    #  2     0x4  4      OPC=vcvtps2dq_xmm_xmm  
  pmovzxbq %xmm11, %xmm1     #  3     0x8  6      OPC=pmovzxbq_xmm_xmm   
  retq                       #  4     0xe  1      OPC=retq               
                                                                         
.size target, .-target
