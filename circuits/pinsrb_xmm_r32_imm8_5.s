  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_byte_7_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label      
  orl %ebx, %ebx                     #  2     0x5   2      OPC=orl_r32_r32      
  cmovael %ebx, %r8d                 #  3     0x7   4      OPC=cmovael_r32_r32  
  callq .move_r8b_to_byte_5_of_ymm1  #  4     0xb   5      OPC=callq_label      
  retq                               #  5     0x10  1      OPC=retq             
                                                                                
.size target, .-target
