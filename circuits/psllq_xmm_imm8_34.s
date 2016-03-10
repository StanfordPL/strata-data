  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vmovsldup %xmm1, %xmm2        #  1     0     4      OPC=vmovsldup_xmm_xmm    
  vxorpd %xmm5, %xmm5, %xmm4    #  2     0x4   4      OPC=vxorpd_xmm_xmm_xmm   
  vpaddd %ymm2, %ymm2, %ymm3    #  3     0x8   4      OPC=vpaddd_ymm_ymm_ymm   
  pmovsxdq %xmm4, %xmm1         #  4     0xc   5      OPC=pmovsxdq_xmm_xmm     
  vphaddd %ymm3, %ymm3, %ymm11  #  5     0x11  5      OPC=vphaddd_ymm_ymm_ymm  
  punpckldq %xmm11, %xmm1       #  6     0x16  5      OPC=punpckldq_xmm_xmm    
  retq                          #  7     0x1b  1      OPC=retq                 
                                                                               
.size target, .-target
