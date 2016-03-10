  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckldq %xmm10, %xmm2, %xmm4                 #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %ymm4, %ymm4, %ymm0                 #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhdq %ymm0, %ymm4, %ymm1                  #  4     0xe   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckldq %xmm10, %xmm9, %xmm3                 #  5     0x12  5      OPC=vpunpckldq_xmm_xmm_xmm   
  punpcklqdq %xmm3, %xmm1                         #  6     0x17  4      OPC=punpcklqdq_xmm_xmm       
  retq                                            #  7     0x1b  1      OPC=retq                     
                                                                                                     
.size target, .-target
