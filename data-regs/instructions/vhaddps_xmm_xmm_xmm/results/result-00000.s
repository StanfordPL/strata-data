  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovlhps %xmm2, %xmm2, %xmm15    #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm    
  vpbroadcastq %xmm3, %xmm7        #  2     0x4   5      OPC=vpbroadcastq_xmm_xmm    
  vpunpckhdq %xmm2, %xmm15, %xmm4  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhdq %xmm3, %xmm7           #  4     0xd   4      OPC=punpckhdq_xmm_xmm       
  vmovlhps %xmm7, %xmm4, %xmm1     #  5     0x11  4      OPC=vmovlhps_xmm_xmm_xmm    
  vmovhlps %xmm4, %xmm7, %xmm13    #  6     0x15  4      OPC=vmovhlps_xmm_xmm_xmm    
  vaddps %ymm13, %ymm1, %ymm1      #  7     0x19  5      OPC=vaddps_ymm_ymm_ymm      
  retq                             #  8     0x1e  1      OPC=retq                    
                                                                                     
.size target, .-target
