  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpbroadcastq %xmm3, %ymm11          #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label           
  vmovhlps %xmm11, %xmm3, %xmm5       #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm  
  vmovapd %ymm5, %ymm9                #  4     0xf   4      OPC=vmovapd_ymm_ymm       
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label           
  retq                                #  6     0x18  1      OPC=retq                  
                                                                                      
.size target, .-target
