  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_64_xmm3_xmm10_xmm11           #  1     0     5      OPC=callq_label      
  vmovups %xmm3, %xmm11                         #  2     0x5   4      OPC=vmovups_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1          #  3     0x9   5      OPC=callq_label      
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xe   5      OPC=callq_label      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label      
  retq                                          #  6     0x18  1      OPC=retq             
                                                                                           
.size target, .-target
