  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm5  #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  vmovshdup %xmm5, %xmm1  #  2     0x5   4      OPC=vmovshdup_xmm_xmm  
  pmovzxdq %xmm1, %xmm5   #  3     0x9   5      OPC=pmovzxdq_xmm_xmm   
  vpmovzxwq %xmm5, %xmm0  #  4     0xe   5      OPC=vpmovzxwq_xmm_xmm  
  movq %xmm0, %rbx        #  5     0x13  5      OPC=movq_r64_xmm       
  retq                    #  6     0x18  1      OPC=retq               
                                                                       
.size target, .-target
