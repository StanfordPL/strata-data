  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  vmovdqu %ymm3, %ymm1                  #  1     0    4      OPC=vmovdqu_ymm_ymm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x4  5      OPC=callq_label      
  movdqa %xmm13, %xmm1                  #  3     0x9  5      OPC=movdqa_xmm_xmm   
  retq                                  #  4     0xe  1      OPC=retq             
                                                                                  
.size target, .-target
