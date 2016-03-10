  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm4, %ymm7                     #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  vunpckhpd %ymm2, %ymm2, %ymm3                 #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xe   5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm3, %ymm1                 #  5     0x13  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                          #  6     0x17  1      OPC=retq                   
                                                                                                 
.size target, .-target
