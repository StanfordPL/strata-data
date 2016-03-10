  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vxorpd %xmm13, %xmm13, %xmm15  #  1     0    5      OPC=vxorpd_xmm_xmm_xmm  
  vsubps %ymm15, %ymm15, %ymm2   #  2     0x5  5      OPC=vsubps_ymm_ymm_ymm  
  pmovsxdq %xmm2, %xmm1          #  3     0xa  5      OPC=pmovsxdq_xmm_xmm    
  retq                           #  4     0xf  1      OPC=retq                
                                                                              
.size target, .-target
