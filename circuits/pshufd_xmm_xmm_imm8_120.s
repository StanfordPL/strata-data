  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm9, %xmm11, %xmm11                #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movaps %xmm8, %xmm1                             #  3     0xa   4      OPC=movaps_xmm_xmm          
  punpckhdq %xmm2, %xmm10                         #  4     0xe   5      OPC=punpckhdq_xmm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm3             #  5     0x13  5      OPC=callq_label             
  paddd %xmm3, %xmm1                              #  6     0x18  4      OPC=paddd_xmm_xmm           
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
