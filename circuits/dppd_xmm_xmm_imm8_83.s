  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  vmulsd %xmm2, %xmm12, %xmm13         #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm   
  vhaddpd %ymm13, %ymm13, %ymm14       #  3     0x9   5      OPC=vhaddpd_ymm_ymm_ymm  
  movdqu %xmm14, %xmm1                 #  4     0xe   5      OPC=movdqu_xmm_xmm       
  retq                                 #  5     0x13  1      OPC=retq                 
                                                                                      
.size target, .-target
