  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label      
  vzeroall                           #  2     0x5   3      OPC=vzeroall         
  callq .move_byte_9_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label      
  xaddb %r9b, %r10b                  #  4     0xd   4      OPC=xaddb_r8_r8      
  callq .move_064_128_r10_r11_xmm1   #  5     0x11  5      OPC=callq_label      
  cmovnbl %ebx, %r9d                 #  6     0x16  4      OPC=cmovnbl_r32_r32  
  callq .move_r9b_to_byte_5_of_ymm1  #  7     0x1a  5      OPC=callq_label      
  retq                               #  8     0x1f  1      OPC=retq             
                                                                                
.size target, .-target
