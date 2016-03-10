  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm6, %xmm14               #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpbroadcastd %xmm14, %ymm6                    #  3     0x9   5      OPC=vpbroadcastd_ymm_xmm    
  vunpcklps %xmm14, %xmm6, %xmm1                #  4     0xe   5      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                          #  5     0x13  1      OPC=retq                    
                                                                                                  
.size target, .-target
