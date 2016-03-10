  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                       
.target:                               #        0    0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0    5      OPC=callq_label              
  movsldup %xmm11, %xmm13              #  2     0x5  5      OPC=movsldup_xmm_xmm         
  vpunpcklqdq %xmm13, %xmm11, %xmm1    #  3     0xa  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  4     0xf  1      OPC=retq                     
                                                                                         
.size target, .-target
