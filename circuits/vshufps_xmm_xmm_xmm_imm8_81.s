  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm9, %xmm1                       #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  callq .move_128_64_xmm1_xmm8_xmm9               #  3     0xa   5      OPC=callq_label             
  movshdup %xmm2, %xmm5                           #  4     0xf   4      OPC=movshdup_xmm_xmm        
  vpunpckldq %xmm2, %xmm5, %xmm8                  #  5     0x13  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x17  5      OPC=callq_label             
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
