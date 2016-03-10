  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm8_xmm9   #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm8, %xmm2, %xmm4      #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label              
  vpbroadcastq %xmm13, %ymm1           #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm     
  vmovhlps %xmm9, %xmm4, %xmm15        #  5     0x14  5      OPC=vmovhlps_xmm_xmm_xmm     
  movaps %xmm15, %xmm1                 #  6     0x19  4      OPC=movaps_xmm_xmm           
  retq                                 #  7     0x1d  1      OPC=retq                     
                                                                                          
.size target, .-target
