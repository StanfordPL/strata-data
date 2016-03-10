  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  blsrl %ebx, %r9d                   #  1     0    5      OPC=blsrl_r32_r32  
  xaddl %r9d, %ebx                   #  2     0x5  4      OPC=xaddl_r32_r32  
  callq .move_r9b_to_byte_0_of_ymm1  #  3     0x9  5      OPC=callq_label    
  retq                               #  4     0xe  1      OPC=retq           
                                                                             
.size target, .-target
