  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vmovdqa %xmm2, %xmm13              #  2     0x5   4      OPC=vmovdqa_xmm_xmm     
  vmaxpd %ymm13, %ymm13, %ymm9       #  3     0x9   5      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                               #  5     0x13  1      OPC=retq                
                                                                                   
.size target, .-target
