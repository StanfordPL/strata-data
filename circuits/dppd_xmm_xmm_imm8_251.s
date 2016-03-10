  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vmulpd %xmm2, %xmm1, %xmm2         #  1     0     4      OPC=vmulpd_xmm_xmm_xmm    
  vhaddpd %ymm2, %ymm2, %ymm9        #  2     0x4   4      OPC=vhaddpd_ymm_ymm_ymm   
  vpbroadcastq %xmm9, %ymm8          #  3     0x8   5      OPC=vpbroadcastq_ymm_xmm  
  pmovsxdq %xmm9, %xmm5              #  4     0xd   6      OPC=pmovsxdq_xmm_xmm      
  unpcklpd %xmm5, %xmm8              #  5     0x13  5      OPC=unpcklpd_xmm_xmm      
  callq .move_64_128_xmm8_xmm9_xmm1  #  6     0x18  5      OPC=callq_label           
  retq                               #  7     0x1d  1      OPC=retq                  
                                                                                     
.size target, .-target
