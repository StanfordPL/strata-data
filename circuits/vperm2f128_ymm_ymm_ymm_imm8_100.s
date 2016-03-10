  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vbroadcastsd %xmm3, %ymm1            #  1     0     5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  callq .move_128_064_xmm2_r12_r13     #  3     0xa   5      OPC=callq_label              
  vpbroadcastq %xmm11, %ymm12          #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm12, %ymm1, %ymm1     #  5     0x14  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_064_128_r12_r13_xmm1     #  6     0x19  5      OPC=callq_label              
  retq                                 #  7     0x1e  1      OPC=retq                     
                                                                                          
.size target, .-target
