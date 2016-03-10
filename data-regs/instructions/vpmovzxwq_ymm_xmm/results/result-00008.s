  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  pmovzxwd %xmm2, %xmm11   #  1     0    6      OPC=pmovzxwd_xmm_xmm   
  vpmovzxwd %xmm11, %ymm1  #  2     0x6  5      OPC=vpmovzxwd_ymm_xmm  
  retq                     #  3     0xb  1      OPC=retq               
                                                                       
.size target, .-target
