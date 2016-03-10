  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm2          #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x4  5      OPC=callq_label         
  callq .move_64_128_xmm8_xmm9_xmm1   #  3     0x9  5      OPC=callq_label         
  retq                                #  4     0xe  1      OPC=retq                
                                                                                   
.size target, .-target
