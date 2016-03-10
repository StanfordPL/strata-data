  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm1_xmm8_xmm9               #  2     0x5   5      OPC=callq_label             
  vpunpckhdq %xmm8, %xmm1, %xmm6                  #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm11, %xmm6, %xmm11                #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  punpcklqdq %xmm11, %xmm1                        #  5     0x14  5      OPC=punpcklqdq_xmm_xmm      
  retq                                            #  6     0x19  1      OPC=retq                    
                                                                                                    
.size target, .-target
