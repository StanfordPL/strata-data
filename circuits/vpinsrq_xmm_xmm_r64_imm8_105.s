  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  movq %rbx, %xmm12                  #  1     0    5      OPC=movq_xmm_r64             
  vpbroadcastq %xmm2, %xmm13         #  2     0x5  5      OPC=vpbroadcastq_xmm_xmm     
  vpunpcklqdq %xmm12, %xmm13, %xmm1  #  3     0xa  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  4     0xf  1      OPC=retq                     
                                                                                       
.size target, .-target
