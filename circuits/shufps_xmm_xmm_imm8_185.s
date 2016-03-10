  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm1, %xmm5                 #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm10, %xmm11, %xmm12               #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movq %xmm12, %xmm13                             #  4     0xf   5      OPC=movq_xmm_xmm            
  vpunpckhdq %xmm1, %xmm5, %xmm12                 #  5     0x14  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1             #  6     0x18  5      OPC=callq_label             
  retq                                            #  7     0x1d  1      OPC=retq                    
                                                                                                    
.size target, .-target
