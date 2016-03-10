  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm2_xmm8_xmm9             #  2     0x5   5      OPC=callq_label         
  vmovss %xmm1, %xmm2, %xmm8                    #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm  
  unpcklps %xmm7, %xmm9                         #  4     0xe   4      OPC=unpcklps_xmm_xmm    
  callq .move_64_128_xmm8_xmm9_xmm1             #  5     0x12  5      OPC=callq_label         
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
