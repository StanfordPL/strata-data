  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm7, %xmm1                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  divps %xmm6, %xmm1                            #  3     0xa   3      OPC=divps_xmm_xmm           
  vpunpckldq %ymm2, %ymm1, %ymm5                #  4     0xd   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklps %ymm5, %ymm2, %ymm1                 #  5     0x11  4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhpd %ymm1, %ymm1, %ymm1                 #  6     0x15  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                                          #  7     0x19  1      OPC=retq                    
                                                                                                  
.size target, .-target
