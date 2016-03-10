  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  vzeroall                           #  1     0     3      OPC=vzeroall       
  callq .move_128_064_xmm2_r8_r9     #  2     0x3   5      OPC=callq_label    
  xaddl %r8d, %ebx                   #  3     0x8   4      OPC=xaddl_r32_r32  
  callq .move_064_128_r8_r9_xmm1     #  4     0xc   5      OPC=callq_label    
  callq .move_byte_2_of_rbx_to_r8b   #  5     0x11  5      OPC=callq_label    
  callq .move_r8b_to_byte_2_of_ymm1  #  6     0x16  5      OPC=callq_label    
  retq                               #  7     0x1b  1      OPC=retq           
                                                                              
.size target, .-target
