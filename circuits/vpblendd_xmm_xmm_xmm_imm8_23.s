  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vpmovsxdq %xmm3, %ymm1                          #  1     0     5      OPC=vpmovsxdq_ymm_xmm       
  vmovdqu %xmm3, %xmm7                            #  2     0x5   4      OPC=vmovdqu_xmm_xmm         
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label             
  vpunpckhdq %ymm1, %ymm7, %ymm10                 #  4     0xe   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  callq .move_128_64_xmm1_xmm8_xmm9               #  5     0x12  5      OPC=callq_label             
  vpmovsxwq %xmm8, %xmm1                          #  6     0x17  5      OPC=vpmovsxwq_xmm_xmm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1c  5      OPC=callq_label             
  retq                                            #  8     0x21  1      OPC=retq                    
                                                                                                    
.size target, .-target
