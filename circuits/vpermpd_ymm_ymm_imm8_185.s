  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm0       #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vbroadcastsd %xmm11, %ymm11           #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm11, %ymm0, %ymm1      #  4     0xe   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target
