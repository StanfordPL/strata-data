  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  movq %xmm7, %xmm6                             #  2     0x5   4      OPC=movq_xmm_xmm          
  vpmovsxdq %xmm7, %ymm5                        #  3     0x9   5      OPC=vpmovsxdq_ymm_xmm     
  vpbroadcastd %xmm5, %xmm8                     #  4     0xe   5      OPC=vpbroadcastd_xmm_xmm  
  movshdup %xmm8, %xmm1                         #  5     0x13  5      OPC=movshdup_xmm_xmm      
  vmovss %xmm6, %xmm2, %xmm7                    #  6     0x18  4      OPC=vmovss_xmm_xmm_xmm    
  unpcklps %xmm7, %xmm1                         #  7     0x1c  3      OPC=unpcklps_xmm_xmm      
  retq                                          #  8     0x1f  1      OPC=retq                  
                                                                                                
.size target, .-target
