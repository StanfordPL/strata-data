  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  callq .move_64_128_xmm8_xmm9_xmm3               #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm4, %xmm1                  #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
