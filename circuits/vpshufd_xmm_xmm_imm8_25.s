  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm5, %xmm13                    #  2     0x5   5      OPC=vbroadcastss_xmm_xmm    
  vunpcklps %xmm4, %xmm6, %xmm14                #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %ymm14, %ymm13, %ymm1              #  4     0xe   5      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                                          #  5     0x13  1      OPC=retq                    
                                                                                                  
.size target, .-target
