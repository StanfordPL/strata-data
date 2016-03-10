  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_of_into_rbx            #  1     0     5      OPC=callq_label   
  callq .move_016_008_bx_r8b_r9b     #  2     0x5   5      OPC=callq_label   
  callq .move_r8b_to_byte_4_of_rbx   #  3     0xa   5      OPC=callq_label   
  callq .move_064_032_rbx_r10d_r11d  #  4     0xf   5      OPC=callq_label   
  callq .read_sf_into_rbx            #  5     0x14  5      OPC=callq_label   
  xorl %r11d, %ebx                   #  6     0x19  3      OPC=xorl_r32_r32  
  retq                               #  7     0x1c  1      OPC=retq          
                                                                             
.size target, .-target
