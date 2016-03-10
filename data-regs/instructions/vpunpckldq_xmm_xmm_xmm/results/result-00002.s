  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                
.target:                             #        0    0      OPC=<label>           
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label       
  unpcklps %xmm3, %xmm8              #  2     0x5  4      OPC=unpcklps_xmm_xmm  
  vmovdqa %xmm8, %xmm1               #  3     0x9  5      OPC=vmovdqa_xmm_xmm   
  retq                               #  4     0xe  1      OPC=retq              
                                                                                
.size target, .-target
