  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label              
  callq .move_064_128_r8_r9_xmm3                  #  2     0x5   5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  vpunpckldq %xmm11, %xmm11, %xmm1                #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm   
  punpckldq %xmm9, %xmm10                         #  5     0x14  5      OPC=punpckldq_xmm_xmm        
  vpunpcklqdq %xmm10, %xmm1, %xmm1                #  6     0x19  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  7     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
