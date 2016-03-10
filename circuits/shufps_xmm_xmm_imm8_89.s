  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm10_xmm11           #  1     0     5      OPC=callq_label             
  movshdup %xmm2, %xmm13                        #  2     0x5   5      OPC=movshdup_xmm_xmm        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm5, %xmm12              #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1           #  5     0x14  5      OPC=callq_label             
  retq                                          #  6     0x19  1      OPC=retq                    
                                                                                                  
.size target, .-target
