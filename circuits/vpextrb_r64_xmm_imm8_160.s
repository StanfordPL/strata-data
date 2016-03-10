  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vmovdqu %xmm1, %xmm1     #  1     0     4      OPC=vmovdqu_xmm_xmm    
  movdqu %xmm1, %xmm13     #  2     0x4   5      OPC=movdqu_xmm_xmm     
  vpmovzxbq %xmm13, %ymm0  #  3     0x9   5      OPC=vpmovzxbq_ymm_xmm  
  vmovq %xmm0, %rbx        #  4     0xe   5      OPC=vmovq_r64_xmm      
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
