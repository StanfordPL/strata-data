  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm7         #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  vhaddpd %ymm7, %ymm7, %ymm9        #  2     0x4   4      OPC=vhaddpd_ymm_ymm_ymm  
  vpsubd %xmm7, %xmm7, %xmm8         #  3     0x8   4      OPC=vpsubd_xmm_xmm_xmm   
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xc   5      OPC=callq_label          
  retq                               #  5     0x11  1      OPC=retq                 
                                                                                    
.size target, .-target
