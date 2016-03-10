  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm8_xmm9               #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm2_xmm10_xmm11             #  2     0x5   5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  3     0xa   5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  4     0xf   5      OPC=callq_label              
  vpunpckldq %xmm3, %xmm6, %xmm2                  #  5     0x14  4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %xmm2, %xmm11, %xmm14               #  6     0x18  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpunpckhqdq %xmm14, %xmm1, %xmm1                #  7     0x1c  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
