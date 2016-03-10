  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  unpcklps %xmm3, %xmm6                         #  2     0x5   3      OPC=unpcklps_xmm_xmm    
  unpckhps %xmm3, %xmm4                         #  3     0x8   3      OPC=unpckhps_xmm_xmm    
  punpckldq %xmm6, %xmm4                        #  4     0xb   4      OPC=punpckldq_xmm_xmm   
  vmovss %xmm5, %xmm4, %xmm1                    #  5     0xf   4      OPC=vmovss_xmm_xmm_xmm  
  retq                                          #  6     0x13  1      OPC=retq                
                                                                                              
.size target, .-target
