  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm9         #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  vhaddpd %ymm9, %ymm9, %ymm3        #  2     0x4   5      OPC=vhaddpd_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  3     0x9   5      OPC=callq_label          
  movddup %xmm9, %xmm1               #  4     0xe   5      OPC=movddup_xmm_xmm      
  retq                               #  5     0x13  1      OPC=retq                 
                                                                                    
.size target, .-target
