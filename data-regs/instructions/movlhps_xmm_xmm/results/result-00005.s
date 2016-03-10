  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmovdqu %xmm2, %xmm4                 #  1     0     4      OPC=vmovdqu_xmm_xmm     
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vmaxpd %ymm4, %ymm4, %ymm11          #  3     0x9   4      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label         
  retq                                 #  5     0x12  1      OPC=retq                
                                                                                     
.size target, .-target
