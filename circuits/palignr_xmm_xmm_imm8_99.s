  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxbq %xmm2, %ymm10  #  1     0     5      OPC=vpmovzxbq_ymm_xmm  
  vmovshdup %xmm10, %xmm9  #  2     0x5   5      OPC=vmovshdup_xmm_xmm  
  pmovzxwq %xmm9, %xmm1    #  3     0xa   6      OPC=pmovzxwq_xmm_xmm   
  retq                     #  4     0x10  1      OPC=retq               
                                                                        
.size target, .-target
