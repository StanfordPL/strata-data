  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  2     0x5   5      OPC=callq_label             
  vmovss %xmm2, %xmm1, %xmm3                    #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm      
  callq .move_128_64_xmm2_xmm8_xmm9             #  4     0xe   5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm5, %xmm8                #  5     0x13  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1             #  6     0x17  5      OPC=callq_label             
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
