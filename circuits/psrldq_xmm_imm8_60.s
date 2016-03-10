  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm11  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vxorps %xmm11, %xmm11, %xmm11  #  2     0x4  5      OPC=vxorps_xmm_xmm_xmm    
  pmovsxdq %xmm11, %xmm1         #  3     0x9  6      OPC=pmovsxdq_xmm_xmm      
  retq                           #  4     0xf  1      OPC=retq                  
                                                                                
.size target, .-target
