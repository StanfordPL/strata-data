  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm11  #  1     0    5      OPC=vpmovzxwq_ymm_xmm  
  pmovzxdq %xmm11, %xmm1   #  2     0x5  6      OPC=pmovzxdq_xmm_xmm   
  addsubpd %xmm1, %xmm1    #  3     0xb  4      OPC=addsubpd_xmm_xmm   
  retq                     #  4     0xf  1      OPC=retq               
                                                                       
.size target, .-target
