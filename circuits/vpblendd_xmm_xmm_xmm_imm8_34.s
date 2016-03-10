  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label              
  vmovss %xmm8, %xmm3, %xmm1         #  2     0x5  5      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %xmm9, %xmm1, %xmm1    #  3     0xa  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  4     0xf  1      OPC=retq                     
                                                                                       
.size target, .-target
