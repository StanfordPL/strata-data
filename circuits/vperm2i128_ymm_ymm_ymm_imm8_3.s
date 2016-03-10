  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label      
  vmovdqu %xmm9, %xmm1                  #  2     0x5   5      OPC=vmovdqu_xmm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0xa   5      OPC=callq_label      
  vmovdqa %xmm2, %xmm11                 #  4     0xf   4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label      
  retq                                  #  6     0x18  1      OPC=retq             
                                                                                   
.size target, .-target
