  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  callq .move_byte_10_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label   
  xorl %ebx, %ebx                     #  2     0x5   2      OPC=xorl_r32_r32  
  callq .move_byte_11_of_ymm1_to_r9b  #  3     0x7   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx      #  4     0xc   5      OPC=callq_label   
  retq                                #  5     0x11  1      OPC=retq          
                                                                              
.size target, .-target
