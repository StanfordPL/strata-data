  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm5, %xmm1                  #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vbroadcastss %xmm2, %xmm3                       #  3     0x9   5      OPC=vbroadcastss_xmm_xmm    
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label             
  vunpcklps %xmm1, %xmm11, %xmm1                  #  5     0x13  4      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
