  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_64_xmm3_xmm8_xmm9   #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm9, %ymm7           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  vmovlhps %xmm7, %xmm8, %xmm9        #  3     0xa   4      OPC=vmovlhps_xmm_xmm_xmm  
  movdqa %xmm2, %xmm8                 #  4     0xe   5      OPC=movdqa_xmm_xmm        
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label           
  retq                                #  6     0x18  1      OPC=retq                  
                                                                                      
.size target, .-target
