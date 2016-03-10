  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vzeroall                         #  1     0     3      OPC=vzeroall                 
  divps %xmm2, %xmm11              #  2     0x3   4      OPC=divps_xmm_xmm            
  vpmovsxdq %xmm11, %ymm11         #  3     0x7   5      OPC=vpmovsxdq_ymm_xmm        
  pmovsxdq %xmm11, %xmm8           #  4     0xc   6      OPC=pmovsxdq_xmm_xmm         
  vpunpckhqdq %xmm8, %xmm8, %xmm1  #  5     0x12  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                             #  6     0x17  1      OPC=retq                     
                                                                                      
.size target, .-target
