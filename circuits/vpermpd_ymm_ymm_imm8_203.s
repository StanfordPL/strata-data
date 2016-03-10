  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm10, %ymm3            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm2, %ymm3, %ymm1       #  3     0xa   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  4     0xe   5      OPC=callq_label              
  movhlps %xmm11, %xmm1                 #  5     0x13  4      OPC=movhlps_xmm_xmm          
  retq                                  #  6     0x17  1      OPC=retq                     
                                                                                           
.size target, .-target
