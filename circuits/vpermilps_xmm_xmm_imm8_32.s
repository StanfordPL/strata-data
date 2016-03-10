  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label             
  callq .move_064_128_r12_r13_xmm1  #  2     0x5   5      OPC=callq_label             
  vpbroadcastd %xmm1, %ymm4         #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm    
  vmovsldup %xmm2, %xmm13           #  4     0xf   4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %ymm4, %ymm13, %ymm11  #  5     0x13  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovss %xmm2, %xmm11, %xmm6       #  6     0x17  4      OPC=vmovss_xmm_xmm_xmm      
  vmovss %xmm2, %xmm6, %xmm1        #  7     0x1b  4      OPC=vmovss_xmm_xmm_xmm      
  retq                              #  8     0x1f  1      OPC=retq                    
                                                                                      
.size target, .-target
