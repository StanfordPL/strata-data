  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vandps %xmm13, %xmm13, %xmm5         #  2     0x5   5      OPC=vandps_xmm_xmm_xmm       
  vminpd %ymm5, %ymm5, %ymm2           #  3     0xa   4      OPC=vminpd_ymm_ymm_ymm       
  callq .move_256_128_ymm2_xmm8_xmm9   #  4     0xe   5      OPC=callq_label              
  vpunpckhqdq %xmm1, %xmm8, %xmm12     #  5     0x13  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  sqrtss %xmm12, %xmm1                 #  6     0x17  5      OPC=sqrtss_xmm_xmm           
  retq                                 #  7     0x1c  1      OPC=retq                     
                                                                                          
.size target, .-target
