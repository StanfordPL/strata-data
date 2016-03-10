  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm8_xmm9    #  2     0x5   5      OPC=callq_label              
  vpunpckhqdq %xmm3, %xmm2, %xmm12      #  3     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovhlps %xmm9, %xmm13, %xmm13        #  4     0xe   5      OPC=vmovhlps_xmm_xmm_xmm     
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x13  5      OPC=callq_label              
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
