  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxps %xmm3, %xmm3, %xmm10  #  1     0    4      OPC=vmaxps_xmm_xmm_xmm  
  vminps %xmm2, %xmm2, %xmm7   #  2     0x4  4      OPC=vminps_xmm_xmm_xmm  
  vaddps %ymm10, %ymm7, %ymm1  #  3     0x8  5      OPC=vaddps_ymm_ymm_ymm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
