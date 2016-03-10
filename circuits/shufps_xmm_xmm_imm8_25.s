  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm8, %xmm9, %xmm6                  #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm10, %xmm9, %xmm8                 #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x14  5      OPC=callq_label             
  punpcklqdq %xmm6, %xmm1                         #  6     0x19  4      OPC=punpcklqdq_xmm_xmm      
  retq                                            #  7     0x1d  1      OPC=retq                    
                                                                                                    
.size target, .-target
