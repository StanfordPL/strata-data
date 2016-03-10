  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vmovdqa %xmm1, %xmm11              #  2     0x5   4      OPC=vmovdqa_xmm_xmm     
  vmovdqa %xmm2, %xmm14              #  3     0x9   4      OPC=vmovdqa_xmm_xmm     
  vmulpd %ymm14, %ymm11, %ymm8       #  4     0xd   5      OPC=vmulpd_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x12  5      OPC=callq_label         
  retq                               #  6     0x17  1      OPC=retq                
                                                                                   
.size target, .-target
