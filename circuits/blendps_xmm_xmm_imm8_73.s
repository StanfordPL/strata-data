  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  movss %xmm2, %xmm1                            #  2     0x5   4      OPC=movss_xmm_xmm           
  vpbroadcastq %xmm7, %ymm15                    #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm    
  vpunpckhdq %xmm15, %xmm1, %xmm0               #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movlhps %xmm0, %xmm1                          #  5     0x13  3      OPC=movlhps_xmm_xmm         
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
