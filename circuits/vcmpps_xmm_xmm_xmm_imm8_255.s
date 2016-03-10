  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vzeroall                           #  1     0     3      OPC=vzeroall                 
  divps %xmm14, %xmm1                #  2     0x3   4      OPC=divps_xmm_xmm            
  vpmovsxdq %xmm1, %xmm6             #  3     0x7   5      OPC=vpmovsxdq_xmm_xmm        
  pmovsxdq %xmm6, %xmm12             #  4     0xc   6      OPC=pmovsxdq_xmm_xmm         
  vpunpckhqdq %ymm12, %ymm12, %ymm1  #  5     0x12  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
