  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm6, %xmm7, %xmm5                  #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label             
  pmovsxdq %xmm2, %xmm7                           #  4     0xe   5      OPC=pmovsxdq_xmm_xmm        
  movq %xmm10, %xmm6                              #  5     0x13  5      OPC=movq_xmm_xmm            
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  6     0x18  5      OPC=callq_label             
  retq                                            #  7     0x1d  1      OPC=retq                    
                                                                                                    
.size target, .-target
