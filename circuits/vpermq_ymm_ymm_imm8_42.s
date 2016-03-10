  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  movlhps %xmm12, %xmm13                #  2     0x5   4      OPC=movlhps_xmm_xmm       
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x9   5      OPC=callq_label           
  callq .move_256_128_ymm1_xmm8_xmm9    #  4     0xe   5      OPC=callq_label           
  vbroadcastsd %xmm9, %ymm8             #  5     0x13  5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1     #  6     0x18  5      OPC=callq_label           
  retq                                  #  7     0x1d  1      OPC=retq                  
                                                                                        
.size target, .-target
