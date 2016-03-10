  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm3           #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x5   5      OPC=callq_label           
  vmovddup %xmm2, %xmm9               #  3     0xa   4      OPC=vmovddup_xmm_xmm      
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xe   5      OPC=callq_label           
  retq                                #  5     0x13  1      OPC=retq                  
                                                                                      
.size target, .-target
