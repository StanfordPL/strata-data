  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vbroadcastss %xmm1, %xmm0                     #  1     0     5      OPC=vbroadcastss_xmm_xmm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm1, %xmm0, %xmm4                 #  3     0xa   4      OPC=vunpckhpd_xmm_xmm_xmm  
  movdqa %xmm2, %xmm7                           #  4     0xe   4      OPC=movdqa_xmm_xmm         
  vunpckhps %ymm0, %ymm4, %ymm5                 #  5     0x12  4      OPC=vunpckhps_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x16  5      OPC=callq_label            
  retq                                          #  7     0x1b  1      OPC=retq                   
                                                                                                 
.size target, .-target
