  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm11, %ymm8           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  vmovupd %xmm3, %xmm9                 #  3     0xa   4      OPC=vmovupd_xmm_xmm       
  callq .move_128_256_xmm8_xmm9_ymm1   #  4     0xe   5      OPC=callq_label           
  movdqa %xmm2, %xmm1                  #  5     0x13  4      OPC=movdqa_xmm_xmm        
  retq                                 #  6     0x17  1      OPC=retq                  
                                                                                       
.size target, .-target
