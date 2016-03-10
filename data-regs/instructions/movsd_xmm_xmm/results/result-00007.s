  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm3            #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label           
  vmovdqa %ymm3, %ymm12                #  3     0xa   4      OPC=vmovdqa_ymm_ymm       
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xe   5      OPC=callq_label           
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
