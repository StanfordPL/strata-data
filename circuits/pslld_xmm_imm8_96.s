  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm14  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  pmovsxdq %xmm14, %xmm1       #  2     0x4  6      OPC=pmovsxdq_xmm_xmm    
  retq                         #  3     0xa  1      OPC=retq                
                                                                            
.size target, .-target
