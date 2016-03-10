  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm13  #  1     0    5      OPC=vpmovzxdq_ymm_xmm  
  vmovdqa %ymm13, %ymm13   #  2     0x5  5      OPC=vmovdqa_ymm_ymm    
  movq %xmm13, %rbx        #  3     0xa  5      OPC=movq_r64_xmm       
  retq                     #  4     0xf  1      OPC=retq               
                                                                       
.size target, .-target
