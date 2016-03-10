  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm0     #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpbroadcastq %xmm0, %ymm1           #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpcklqdq %ymm2, %ymm1, %ymm1     #  3     0x9   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  4     0xd   5      OPC=callq_label              
  movupd %xmm9, %xmm1                 #  5     0x12  5      OPC=movupd_xmm_xmm           
  retq                                #  6     0x17  1      OPC=retq                     
                                                                                         
.size target, .-target
