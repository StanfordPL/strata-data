  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpbroadcastq %xmm3, %ymm7             #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  callq .move_128_64_xmm3_xmm10_xmm11   #  2     0x5   5      OPC=callq_label              
  callq .move_128_256_xmm10_xmm11_ymm1  #  3     0xa   5      OPC=callq_label              
  vpunpcklqdq %ymm1, %ymm7, %ymm1       #  4     0xf   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movupd %xmm2, %xmm1                   #  5     0x13  4      OPC=movupd_xmm_xmm           
  retq                                  #  6     0x17  1      OPC=retq                     
                                                                                           
.size target, .-target
