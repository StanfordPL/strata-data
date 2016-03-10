  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vandps %xmm3, %xmm3, %xmm5   #  1     0     4      OPC=vandps_xmm_xmm_xmm  
  movsldup %xmm3, %xmm13       #  2     0x4   5      OPC=movsldup_xmm_xmm    
  movdqu %xmm5, %xmm5          #  3     0x9   4      OPC=movdqu_xmm_xmm      
  vmaxss %xmm5, %xmm2, %xmm7   #  4     0xd   4      OPC=vmaxss_xmm_xmm_xmm  
  unpckhps %xmm7, %xmm13       #  5     0x11  4      OPC=unpckhps_xmm_xmm    
  vmovsd %xmm5, %xmm13, %xmm1  #  6     0x15  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  7     0x19  1      OPC=retq                
                                                                             
.size target, .-target
