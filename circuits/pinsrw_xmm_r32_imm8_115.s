  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_016_008_bx_r10b_r11b   #  1     0     5      OPC=callq_label     
  movslq %ebx, %r9                   #  2     0x5   3      OPC=movslq_r64_r32  
  callq .move_r9b_to_byte_6_of_ymm1  #  3     0x8   5      OPC=callq_label     
  movb %r11b, %r9b                   #  4     0xd   3      OPC=movb_r8_r8      
  callq .move_r9b_to_byte_7_of_ymm1  #  5     0x10  5      OPC=callq_label     
  retq                               #  6     0x15  1      OPC=retq            
                                                                               
.size target, .-target
