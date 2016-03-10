  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vmovupd %xmm1, %xmm3                          #  1     0     4      OPC=vmovupd_xmm_xmm         
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label             
  callq .move_128_64_xmm2_xmm10_xmm11           #  3     0x9   5      OPC=callq_label             
  vpbroadcastd %xmm11, %xmm0                    #  4     0xe   5      OPC=vpbroadcastd_xmm_xmm    
  vmovdqu %ymm0, %ymm11                         #  5     0x13  4      OPC=vmovdqu_ymm_ymm         
  vpunpckldq %xmm4, %xmm6, %xmm10               #  6     0x17  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1           #  7     0x1b  5      OPC=callq_label             
  retq                                          #  8     0x20  1      OPC=retq                    
                                                                                                  
.size target, .-target
