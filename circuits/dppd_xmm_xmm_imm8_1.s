  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label   
  movq %xmm2, %xmm1                  #  2     0x5  4      OPC=movq_xmm_xmm  
  pxor %xmm8, %xmm1                  #  3     0x9  5      OPC=pxor_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq          
                                                                            
.size target, .-target
