  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_064_xmm1_r8_r9                  #  1     0     5      OPC=callq_label              
  callq .move_064_128_r8_r9_xmm1                  #  2     0x5   5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  vpunpckhqdq %xmm10, %xmm1, %xmm10               #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovdqa %xmm1, %xmm8                            #  5     0x14  4      OPC=vmovdqa_xmm_xmm          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label              
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target