  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm11, %ymm11          #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  unpcklps %xmm11, %xmm10              #  3     0xa   4      OPC=unpcklps_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label           
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
