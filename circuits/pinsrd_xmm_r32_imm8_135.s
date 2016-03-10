  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  movd %ebx, %xmm3               #  1     0     4      OPC=movd_xmm_r32          
  pmovsxbq %xmm1, %xmm7          #  2     0x4   5      OPC=pmovsxbq_xmm_xmm      
  vmovhlps %xmm1, %xmm7, %xmm12  #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  unpcklps %xmm3, %xmm12         #  4     0xd   4      OPC=unpcklps_xmm_xmm      
  movlhps %xmm12, %xmm1          #  5     0x11  4      OPC=movlhps_xmm_xmm       
  retq                           #  6     0x15  1      OPC=retq                  
                                                                                 
.size target, .-target
