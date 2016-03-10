  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm11                #  1     0     4      OPC=vmovddup_ymm_ymm         
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vpunpckhqdq %xmm2, %xmm10, %xmm5      #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpbroadcastq %xmm5, %ymm0             #  4     0xd   5      OPC=vpbroadcastq_ymm_xmm     
  vmovddup %ymm0, %ymm12                #  5     0x12  4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm12, %ymm11, %ymm1     #  6     0x16  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  7     0x1b  1      OPC=retq                     
                                                                                           
.size target, .-target
