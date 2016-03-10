  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label             
  callq .move_064_128_r8_r9_xmm3       #  2     0x5   5      OPC=callq_label             
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label             
  vpunpckhdq %xmm3, %xmm10, %xmm1      #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm1, %xmm11, %xmm1      #  5     0x13  4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckhdq %xmm2, %xmm1               #  6     0x17  4      OPC=punpckhdq_xmm_xmm       
  retq                                 #  7     0x1b  1      OPC=retq                    
                                                                                         
.size target, .-target
