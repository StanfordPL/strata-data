  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vminsd %xmm12, %xmm12, %xmm13        #  2     0x5   5      OPC=vminsd_xmm_xmm_xmm       
  vmovlhps %xmm13, %xmm2, %xmm12       #  3     0xa   5      OPC=vmovlhps_xmm_xmm_xmm     
  vpunpckhqdq %ymm3, %ymm2, %ymm1      #  4     0xf   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                 #  6     0x18  1      OPC=retq                     
                                                                                          
.size target, .-target
