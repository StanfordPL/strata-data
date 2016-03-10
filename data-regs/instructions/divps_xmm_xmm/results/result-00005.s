  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vmovdqa %xmm1, %xmm10              #  1     0     4      OPC=vmovdqa_xmm_xmm     
  vmovdqu %xmm2, %xmm7               #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  vdivps %ymm7, %ymm10, %ymm2        #  3     0x8   4      OPC=vdivps_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xc   5      OPC=callq_label         
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x11  5      OPC=callq_label         
  retq                               #  6     0x16  1      OPC=retq                
                                                                                   
.size target, .-target
