  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label             
  vbroadcastss %xmm2, %ymm9                       #  3     0xa   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %xmm2, %xmm9, %xmm1                  #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm5, %xmm10, %xmm7                 #  5     0x13  4      OPC=vpunpckldq_xmm_xmm_xmm  
  unpcklpd %xmm7, %xmm1                           #  6     0x17  4      OPC=unpcklpd_xmm_xmm        
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
