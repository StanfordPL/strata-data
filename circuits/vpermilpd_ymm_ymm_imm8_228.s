  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm1               #  1     0     4      OPC=vmovddup_ymm_ymm         
  callq .move_128_064_xmm1_r12_r13    #  2     0x4   5      OPC=callq_label              
  callq .move_byte_15_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label              
  callq .move_r8b_to_byte_7_of_ymm1   #  4     0xe   5      OPC=callq_label              
  vpunpckhqdq %ymm1, %ymm2, %ymm1     #  5     0x13  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_064_128_r12_r13_xmm1    #  6     0x17  5      OPC=callq_label              
  retq                                #  7     0x1c  1      OPC=retq                     
                                                                                         
.size target, .-target
