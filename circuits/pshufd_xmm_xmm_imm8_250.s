  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vmaxpd %xmm5, %xmm7, %xmm3                    #  2     0x5   4      OPC=vmaxpd_xmm_xmm_xmm    
  vpbroadcastd %xmm6, %xmm5                     #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xe   5      OPC=callq_label           
  vmovaps %ymm3, %ymm13                         #  5     0x13  4      OPC=vmovaps_ymm_ymm       
  movshdup %xmm13, %xmm1                        #  6     0x17  5      OPC=movshdup_xmm_xmm      
  retq                                          #  7     0x1c  1      OPC=retq                  
                                                                                                
.size target, .-target
