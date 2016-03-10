  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmovdqu %xmm2, %xmm2                 #  1     0     4      OPC=vmovdqu_xmm_xmm     
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  vmaxpd %ymm2, %ymm2, %ymm2           #  3     0x9   4      OPC=vmaxpd_ymm_ymm_ymm  
  vminpd %ymm2, %ymm2, %ymm13          #  4     0xd   4      OPC=vminpd_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x11  5      OPC=callq_label         
  retq                                 #  6     0x16  1      OPC=retq                
                                                                                     
.size target, .-target
