  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminps %xmm2, %xmm2, %xmm1   #  1     0    4      OPC=vminps_xmm_xmm_xmm  
  vmaxps %xmm3, %xmm3, %xmm11  #  2     0x4  4      OPC=vmaxps_xmm_xmm_xmm  
  vaddpd %ymm11, %ymm1, %ymm1  #  3     0x8  5      OPC=vaddpd_ymm_ymm_ymm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
