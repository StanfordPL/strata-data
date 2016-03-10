  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vunpcklpd %xmm2, %xmm10, %xmm12                 #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm   
  vmovss %xmm12, %xmm2, %xmm12                    #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %xmm8, %xmm12, %xmm10                #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovdqa %ymm10, %ymm13                          #  5     0x13  5      OPC=vmovdqa_ymm_ymm         
  callq .move_64_128_xmm12_xmm13_xmm1             #  6     0x18  5      OPC=callq_label             
  retq                                            #  7     0x1d  1      OPC=retq                    
                                                                                                    
.size target, .-target
