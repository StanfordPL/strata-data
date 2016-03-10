  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0    5      OPC=callq_label              
  vpunpckhqdq %xmm9, %xmm9, %xmm5    #  2     0x5  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movupd %xmm5, %xmm1                #  3     0xa  4      OPC=movupd_xmm_xmm           
  retq                               #  4     0xe  1      OPC=retq                     
                                                                                       
.size target, .-target
