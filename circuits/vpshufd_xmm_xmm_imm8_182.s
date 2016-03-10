  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm2_xmm10_xmm11           #  2     0x5   5      OPC=callq_label             
  vmovss %xmm6, %xmm2, %xmm1                    #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %xmm11, %xmm7, %xmm0               #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  unpcklpd %xmm0, %xmm1                         #  5     0x13  4      OPC=unpcklpd_xmm_xmm        
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
