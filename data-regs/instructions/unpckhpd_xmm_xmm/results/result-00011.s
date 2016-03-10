  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vmovdqu %xmm2, %xmm12                           #  1     0     4      OPC=vmovdqu_xmm_xmm          
  vpunpckhqdq %xmm12, %xmm1, %xmm3                #  2     0x4   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label              
  retq                                            #  5     0x13  1      OPC=retq                     
                                                                                                     
.size target, .-target
