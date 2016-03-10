  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm8_xmm9              #  2     0x5   5      OPC=callq_label              
  movhlps %xmm2, %xmm9                            #  3     0xa   4      OPC=movhlps_xmm_xmm          
  vunpcklpd %xmm2, %xmm10, %xmm2                  #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm2, %xmm9, %xmm8                 #  5     0x12  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1              #  6     0x16  5      OPC=callq_label              
  retq                                            #  7     0x1b  1      OPC=retq                     
                                                                                                     
.size target, .-target
