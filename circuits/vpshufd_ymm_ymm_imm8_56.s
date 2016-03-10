  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm7, %xmm5, %xmm13              #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpcklpd %ymm2, %ymm2, %ymm1                 #  3     0x9   4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhdq %ymm1, %ymm2, %ymm7                #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhpd %ymm13, %ymm7, %ymm9                #  5     0x11  5      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpckldq %ymm9, %ymm1, %ymm2                #  6     0x16  5      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpcklps %ymm7, %ymm2, %ymm1                 #  7     0x1b  4      OPC=vunpcklps_ymm_ymm_ymm    
  retq                                          #  8     0x1f  1      OPC=retq                     
                                                                                                   
.size target, .-target
