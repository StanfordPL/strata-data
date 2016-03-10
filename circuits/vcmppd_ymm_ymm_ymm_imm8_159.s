  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vzeroall                     #  1     0     3      OPC=vzeroall              
  vdivps %xmm7, %xmm1, %xmm13  #  2     0x3   4      OPC=vdivps_xmm_xmm_xmm    
  vpmovsxdq %xmm13, %ymm1      #  3     0x7   5      OPC=vpmovsxdq_ymm_xmm     
  vmovshdup %ymm1, %ymm2       #  4     0xc   4      OPC=vmovshdup_ymm_ymm     
  vpbroadcastd %xmm2, %ymm1    #  5     0x10  5      OPC=vpbroadcastd_ymm_xmm  
  retq                         #  6     0x15  1      OPC=retq                  
                                                                               
.size target, .-target
