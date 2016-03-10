  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  xorl %ebx, %ebx                     #  1     0     2      OPC=xorl_r32_r32  
  callq .move_byte_15_of_ymm1_to_r9b  #  2     0x2   5      OPC=callq_label   
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x7   5      OPC=callq_label   
  xorb %bl, %bh                       #  4     0xc   2      OPC=xorb_rh_r8    
  callq .move_008_016_r8b_r9b_cx      #  5     0xe   5      OPC=callq_label   
  addw %cx, %bx                       #  6     0x13  3      OPC=addw_r16_r16  
  retq                                #  7     0x16  1      OPC=retq          
                                                                              
.size target, .-target
