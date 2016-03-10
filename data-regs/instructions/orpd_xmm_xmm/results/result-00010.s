  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  orps %xmm1, %xmm2                  #  1     0    3      OPC=orps_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x3  5      OPC=callq_label   
  callq .move_64_128_xmm8_xmm9_xmm1  #  3     0x8  5      OPC=callq_label   
  retq                               #  4     0xd  1      OPC=retq          
                                                                            
.size target, .-target
