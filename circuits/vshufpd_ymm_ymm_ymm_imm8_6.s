  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  punpcklqdq %xmm2, %xmm2               #  1     0     4      OPC=punpcklqdq_xmm_xmm       
  vpunpcklqdq %ymm3, %ymm2, %ymm12      #  2     0x4   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  3     0x8   5      OPC=callq_label              
  vpunpckhqdq %ymm12, %ymm2, %ymm1      #  4     0xd   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
