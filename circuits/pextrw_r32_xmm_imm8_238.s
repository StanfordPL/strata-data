  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  xorl %ebx, %ebx                     #  1     0     2      OPC=xorl_r32_r32  
  callq .move_byte_12_of_ymm1_to_r9b  #  2     0x2   5      OPC=callq_label   
  movb %r9b, %r8b                     #  3     0x7   3      OPC=movb_r8_r8    
  callq .move_r8b_to_byte_4_of_ymm1   #  4     0xa   5      OPC=callq_label   
  callq .move_byte_13_of_ymm1_to_r9b  #  5     0xf   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx      #  6     0x14  5      OPC=callq_label   
  retq                                #  7     0x19  1      OPC=retq          
                                                                              
.size target, .-target
