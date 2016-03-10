  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vmovshdup %xmm2, %xmm1                          #  1     0     4      OPC=vmovshdup_xmm_xmm        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  callq .move_128_64_xmm3_xmm8_xmm9               #  3     0x9   5      OPC=callq_label              
  vmovshdup %xmm9, %xmm11                         #  4     0xe   5      OPC=vmovshdup_xmm_xmm        
  vpunpckhqdq %xmm3, %xmm2, %xmm8                 #  5     0x13  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label              
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
