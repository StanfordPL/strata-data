  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %ymm2, %ymm2, %ymm5                  #  2     0x5   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm5, %ymm12                  #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm   
  vorpd %xmm10, %xmm10, %xmm1                     #  4     0xd   5      OPC=vorpd_xmm_xmm_xmm       
  vunpcklps %ymm1, %ymm12, %ymm10                 #  5     0x12  4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhps %ymm10, %ymm12, %ymm1                 #  6     0x16  5      OPC=vunpckhps_ymm_ymm_ymm   
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
