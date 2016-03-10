  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vmaxsd %xmm8, %xmm2, %xmm1         #  2     0x5   5      OPC=vmaxsd_xmm_xmm_xmm  
  vmovdqa %xmm3, %xmm14              #  3     0xa   4      OPC=vmovdqa_xmm_xmm     
  vmaxpd %ymm14, %ymm1, %ymm1        #  4     0xe   5      OPC=vmaxpd_ymm_ymm_ymm  
  retq                               #  5     0x13  1      OPC=retq                
                                                                                   
.size target, .-target
