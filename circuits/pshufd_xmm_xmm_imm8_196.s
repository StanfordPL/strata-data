  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm2_xmm10_xmm11           #  2     0x5   5      OPC=callq_label             
  callq .move_64_128_xmm10_xmm11_xmm3           #  3     0xa   5      OPC=callq_label             
  callq .move_128_64_xmm3_xmm12_xmm13           #  4     0xf   5      OPC=callq_label             
  vpunpckldq %xmm7, %xmm4, %xmm13               #  5     0x14  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1           #  6     0x18  5      OPC=callq_label             
  retq                                          #  7     0x1d  1      OPC=retq                    
                                                                                                  
.size target, .-target
