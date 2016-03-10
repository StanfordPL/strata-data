  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode               
.target:                               #        0    0      OPC=<label>          
  vmovdqa %ymm2, %ymm1                 #  1     0    4      OPC=vmovdqa_ymm_ymm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4  5      OPC=callq_label      
  movddup %xmm12, %xmm1                #  3     0x9  5      OPC=movddup_xmm_xmm  
  retq                                 #  4     0xe  1      OPC=retq             
                                                                                 
.size target, .-target
