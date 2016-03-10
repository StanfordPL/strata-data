  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm2            #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label             
  vunpcklps %xmm1, %xmm1, %xmm5        #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm   
  vbroadcastss %xmm5, %xmm12           #  4     0xe   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %ymm12, %ymm5, %ymm12     #  5     0x13  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x18  5      OPC=callq_label             
  retq                                 #  7     0x1d  1      OPC=retq                    
                                                                                         
.size target, .-target
