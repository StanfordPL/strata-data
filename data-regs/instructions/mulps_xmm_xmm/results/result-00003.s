  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_byte_7_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label         
  callq .move_r9b_to_byte_7_of_ymm1  #  2     0x5   5      OPC=callq_label         
  vmulps %xmm2, %xmm1, %xmm2         #  3     0xa   4      OPC=vmulps_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xe   5      OPC=callq_label         
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x13  5      OPC=callq_label         
  retq                               #  6     0x18  1      OPC=retq                
                                                                                   
.size target, .-target
