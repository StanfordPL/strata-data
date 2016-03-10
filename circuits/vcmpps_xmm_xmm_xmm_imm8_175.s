  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vzeroall                 #  1     0     3      OPC=vzeroall           
  divps %xmm4, %xmm13      #  2     0x3   4      OPC=divps_xmm_xmm      
  pmovsxdq %xmm13, %xmm1   #  3     0x7   6      OPC=pmovsxdq_xmm_xmm   
  vpmovsxdq %xmm1, %ymm12  #  4     0xd   5      OPC=vpmovsxdq_ymm_xmm  
  movshdup %xmm12, %xmm1   #  5     0x12  5      OPC=movshdup_xmm_xmm   
  retq                     #  6     0x17  1      OPC=retq               
                                                                        
.size target, .-target
