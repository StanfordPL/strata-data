  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label    
  vzeroall                           #  2     0x5   3      OPC=vzeroall       
  callq .move_064_128_r8_r9_xmm1     #  3     0x8   5      OPC=callq_label    
  callq .move_016_008_bx_r8b_r9b     #  4     0xd   5      OPC=callq_label    
  xchgl %r8d, %ebx                   #  5     0x12  3      OPC=xchgl_r32_r32  
  callq .move_r9b_to_byte_3_of_ymm1  #  6     0x15  5      OPC=callq_label    
  callq .move_r8b_to_byte_2_of_ymm1  #  7     0x1a  5      OPC=callq_label    
  retq                               #  8     0x1f  1      OPC=retq           
                                                                              
.size target, .-target
