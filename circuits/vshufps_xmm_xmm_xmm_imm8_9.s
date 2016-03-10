  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastd %xmm3, %ymm1        #  1     0     5      OPC=vpbroadcastd_ymm_xmm     
  pmovzxdq %xmm2, %xmm13           #  2     0x5   6      OPC=pmovzxdq_xmm_xmm         
  unpckhps %xmm2, %xmm13           #  3     0xb   4      OPC=unpckhps_xmm_xmm         
  vmovapd %xmm2, %xmm4             #  4     0xf   4      OPC=vmovapd_xmm_xmm          
  punpckldq %xmm13, %xmm4          #  5     0x13  5      OPC=punpckldq_xmm_xmm        
  vpunpckhqdq %xmm1, %xmm4, %xmm1  #  6     0x18  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                             #  7     0x1c  1      OPC=retq                     
                                                                                      
.size target, .-target
