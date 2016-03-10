  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  movq %xmm2, %rbx                   #  1     0     5      OPC=movq_r64_xmm  
  callq .move_016_008_bx_r8b_r9b     #  2     0x5   5      OPC=callq_label   
  callq .move_r8b_to_byte_0_of_ymm1  #  3     0xa   5      OPC=callq_label   
  callq .move_r9b_to_byte_1_of_ymm1  #  4     0xf   5      OPC=callq_label   
  callq .move_byte_2_of_rbx_to_r8b   #  5     0x14  5      OPC=callq_label   
  callq .move_r8b_to_byte_2_of_ymm1  #  6     0x19  5      OPC=callq_label   
  callq .move_byte_3_of_rbx_to_r8b   #  7     0x1e  5      OPC=callq_label   
  callq .move_r8b_to_byte_3_of_ymm1  #  8     0x23  5      OPC=callq_label   
  retq                               #  9     0x28  1      OPC=retq          
                                                                             
.size target, .-target
