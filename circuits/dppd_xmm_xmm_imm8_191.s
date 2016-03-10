  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm12         #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  vhaddpd %xmm2, %xmm12, %xmm3        #  2     0x4   4      OPC=vhaddpd_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  3     0x8   5      OPC=callq_label          
  vmaxpd %ymm3, %ymm3, %ymm9          #  4     0xd   4      OPC=vmaxpd_ymm_ymm_ymm   
  callq .move_64_128_xmm8_xmm9_xmm1   #  5     0x11  5      OPC=callq_label          
  retq                                #  6     0x16  1      OPC=retq                 
                                                                                     
.size target, .-target
