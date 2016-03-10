  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm6, %xmm7, %xmm0                 #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovshdup %ymm0, %ymm12                       #  3     0x9   4      OPC=vmovshdup_ymm_ymm      
  vbroadcastss %xmm0, %ymm9                     #  4     0xd   5      OPC=vbroadcastss_ymm_xmm   
  vpbroadcastd %xmm9, %ymm4                     #  5     0x12  5      OPC=vpbroadcastd_ymm_xmm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x17  5      OPC=callq_label            
  punpckldq %xmm12, %xmm1                       #  7     0x1c  5      OPC=punpckldq_xmm_xmm      
  retq                                          #  8     0x21  1      OPC=retq                   
                                                                                                 
.size target, .-target
