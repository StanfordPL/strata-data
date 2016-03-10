  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  movl %ebx, %r9d                    #  1     0     3      OPC=movl_r32_r32  
  callq .move_r9b_to_byte_0_of_ymm1  #  2     0x3   5      OPC=callq_label   
  callq .move_016_008_bx_r8b_r9b     #  3     0x8   5      OPC=callq_label   
  callq .move_r9b_to_byte_1_of_ymm1  #  4     0xd   5      OPC=callq_label   
  retq                               #  5     0x12  1      OPC=retq          
                                                                             
.size target, .-target
