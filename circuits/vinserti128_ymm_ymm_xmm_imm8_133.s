  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label      
  vmovups %xmm3, %xmm14                 #  2     0x5   4      OPC=vmovups_xmm_xmm  
  vmovdqa %ymm14, %ymm13                #  3     0x9   5      OPC=vmovdqa_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label      
  retq                                  #  5     0x13  1      OPC=retq             
                                                                                   
.size target, .-target
