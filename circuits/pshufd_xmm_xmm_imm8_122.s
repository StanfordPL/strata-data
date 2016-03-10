  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vmovsldup %xmm2, %xmm3                        #  2     0x5   4      OPC=vmovsldup_xmm_xmm     
  movapd %xmm2, %xmm1                           #  3     0x9   4      OPC=movapd_xmm_xmm        
  vpbroadcastd %xmm5, %ymm9                     #  4     0xd   5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11           #  5     0x12  5      OPC=callq_label           
  punpckldq %xmm11, %xmm1                       #  6     0x17  5      OPC=punpckldq_xmm_xmm     
  unpckhps %xmm9, %xmm1                         #  7     0x1c  4      OPC=unpckhps_xmm_xmm      
  movhlps %xmm3, %xmm1                          #  8     0x20  3      OPC=movhlps_xmm_xmm       
  retq                                          #  9     0x23  1      OPC=retq                  
                                                                                                
.size target, .-target
