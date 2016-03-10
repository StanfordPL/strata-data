  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm11, %xmm15                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm2, %xmm15, %xmm14                #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm15, %xmm2, %xmm11                 #  4     0xe   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %xmm14, %xmm11, %xmm1                #  5     0x13  5      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
