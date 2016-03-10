  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  movapd %xmm1, %xmm4          #  1     0    4      OPC=movapd_xmm_xmm      
  vmaxss %xmm1, %xmm4, %xmm15  #  2     0x4  4      OPC=vmaxss_xmm_xmm_xmm  
  vminsd %xmm15, %xmm1, %xmm1  #  3     0x8  5      OPC=vminsd_xmm_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
