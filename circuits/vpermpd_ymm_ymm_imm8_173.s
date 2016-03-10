  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm3       #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vmovddup %ymm2, %ymm1                 #  3     0x9   4      OPC=vmovddup_ymm_ymm         
  callq .move_64_128_xmm12_xmm13_xmm1   #  4     0xd   5      OPC=callq_label              
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
