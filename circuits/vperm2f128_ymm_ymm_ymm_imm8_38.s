  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  movups %xmm9, %xmm13               #  2     0x5   4      OPC=movups_xmm_xmm           
  vpbroadcastq %xmm8, %ymm14         #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm     
  vpbroadcastq %xmm13, %ymm6         #  4     0xe   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpcklqdq %ymm6, %ymm14, %ymm1   #  5     0x13  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
