  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm9              #  1     0     4      OPC=vmovddup_ymm_ymm         
  callq .move_128_064_xmm2_r12_r13   #  2     0x4   5      OPC=callq_label              
  callq .move_064_128_r12_r13_xmm1   #  3     0x9   5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm8_xmm9  #  4     0xe   5      OPC=callq_label              
  vpunpcklqdq %ymm3, %ymm9, %ymm1    #  5     0x13  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
