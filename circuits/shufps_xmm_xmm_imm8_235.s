  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label       
  movshdup %xmm1, %xmm3              #  2     0x5   4      OPC=movshdup_xmm_xmm  
  unpckhps %xmm1, %xmm3              #  3     0x9   3      OPC=unpckhps_xmm_xmm  
  vmovdqu %xmm3, %xmm8               #  4     0xc   4      OPC=vmovdqu_xmm_xmm   
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x10  5      OPC=callq_label       
  retq                               #  6     0x15  1      OPC=retq              
                                                                                 
.size target, .-target
