  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label             
  callq .move_064_128_r12_r13_xmm3  #  2     0x5   5      OPC=callq_label             
  unpcklps %xmm3, %xmm3             #  3     0xa   3      OPC=unpcklps_xmm_xmm        
  vpunpckhdq %xmm2, %xmm3, %xmm8    #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm2, %xmm8, %xmm1    #  5     0x11  4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                              #  6     0x15  1      OPC=retq                    
                                                                                      
.size target, .-target
