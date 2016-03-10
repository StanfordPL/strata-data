  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovdqu %xmm8, %xmm6                            #  2     0x5   5      OPC=vmovdqu_xmm_xmm         
  vpunpckhdq %xmm1, %xmm9, %xmm0                  #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovaps %ymm0, %ymm9                            #  4     0xe   4      OPC=vmovaps_ymm_ymm         
  vpunpckldq %ymm6, %ymm9, %ymm8                  #  5     0x12  4      OPC=vpunpckldq_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x16  5      OPC=callq_label             
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
