  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastd %xmm11, %ymm1            #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm   
  punpckldq %xmm2, %xmm1                #  3     0xa   4      OPC=punpckldq_xmm_xmm      
  vunpcklps %ymm1, %ymm2, %ymm0         #  4     0xe   4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhpd %ymm0, %ymm2, %ymm1         #  5     0x12  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                  #  6     0x16  1      OPC=retq                   
                                                                                         
.size target, .-target
