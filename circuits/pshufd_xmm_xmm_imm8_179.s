  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovddup %xmm10, %xmm13                         #  2     0x5   5      OPC=vmovddup_xmm_xmm        
  vpunpckldq %xmm2, %xmm11, %xmm10                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm13, %xmm10, %xmm11               #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x13  5      OPC=callq_label             
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
