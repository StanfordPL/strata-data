  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovzxdq %xmm2, %xmm11  #  1     0    5      OPC=vpmovzxdq_xmm_xmm  
  vmovsldup %ymm11, %ymm8  #  2     0x5  5      OPC=vmovsldup_ymm_ymm  
  movaps %xmm8, %xmm1      #  3     0xa  4      OPC=movaps_xmm_xmm     
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
