  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vpmovsxdq %xmm1, %ymm1       #  1     0     5      OPC=vpmovsxdq_ymm_xmm    
  vmovq %xmm1, %xmm5           #  2     0x5   4      OPC=vmovq_xmm_xmm        
  vhsubpd %ymm5, %ymm5, %ymm1  #  3     0x9   4      OPC=vhsubpd_ymm_ymm_ymm  
  vmovd %xmm1, %ebx            #  4     0xd   4      OPC=vmovd_r32_xmm        
  retq                         #  5     0x11  1      OPC=retq                 
                                                                              
.size target, .-target
