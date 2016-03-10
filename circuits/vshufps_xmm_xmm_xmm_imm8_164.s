  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm4      #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vmovsldup %xmm3, %xmm13        #  2     0x5   4      OPC=vmovsldup_xmm_xmm     
  vmovaps %xmm4, %xmm2           #  3     0x9   4      OPC=vmovaps_xmm_xmm       
  vmovhlps %xmm2, %xmm13, %xmm1  #  4     0xd   4      OPC=vmovhlps_xmm_xmm_xmm  
  retq                           #  5     0x11  1      OPC=retq                  
                                                                                 
.size target, .-target
