  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  xorps %xmm8, %xmm8      #  1     0    4      OPC=xorps_xmm_xmm      
  vpmovzxdq %xmm8, %ymm4  #  2     0x4  5      OPC=vpmovzxdq_ymm_xmm  
  pmovzxbq %xmm4, %xmm1   #  3     0x9  5      OPC=pmovzxbq_xmm_xmm   
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
