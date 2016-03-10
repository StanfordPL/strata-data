  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vorps %ymm2, %ymm2, %ymm8            #  2     0x5   4      OPC=vorps_ymm_ymm_ymm     
  vmovups %xmm13, %xmm9                #  3     0x9   5      OPC=vmovups_xmm_xmm       
  vmovlhps %xmm9, %xmm12, %xmm9        #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1   #  5     0x13  5      OPC=callq_label           
  retq                                 #  6     0x18  1      OPC=retq                  
                                                                                       
.size target, .-target
