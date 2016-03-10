  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vmovupd %ymm2, %ymm13                #  2     0x5   4      OPC=vmovupd_ymm_ymm       
  callq .move_256_128_ymm2_xmm8_xmm9   #  3     0x9   5      OPC=callq_label           
  vpbroadcastq %xmm9, %ymm1            #  4     0xe   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label           
  retq                                 #  6     0x18  1      OPC=retq                  
                                                                                       
.size target, .-target
