  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vzeroall                   #  1     0     3      OPC=vzeroall              
  divps %xmm15, %xmm0        #  2     0x3   4      OPC=divps_xmm_xmm         
  pmovsxdq %xmm0, %xmm11     #  3     0x7   6      OPC=pmovsxdq_xmm_xmm      
  movshdup %xmm11, %xmm0     #  4     0xd   5      OPC=movshdup_xmm_xmm      
  vpbroadcastq %xmm0, %ymm1  #  5     0x12  5      OPC=vpbroadcastq_ymm_xmm  
  retq                       #  6     0x17  1      OPC=retq                  
                                                                             
.size target, .-target
