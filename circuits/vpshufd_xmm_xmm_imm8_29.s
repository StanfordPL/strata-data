  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vbroadcastsd %xmm2, %ymm3                     #  1     0     5      OPC=vbroadcastsd_ymm_xmm    
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  vunpckhps %xmm2, %xmm3, %xmm15                #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckldq %xmm15, %xmm7, %xmm5               #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklps %xmm5, %xmm2, %xmm4                 #  5     0x13  4      OPC=vunpcklps_xmm_xmm_xmm   
  vunpckhpd %xmm4, %xmm15, %xmm1                #  6     0x17  4      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                                          #  7     0x1b  1      OPC=retq                    
                                                                                                  
.size target, .-target
