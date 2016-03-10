  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_byte_2_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label      
  movsbl %bl, %r8d                   #  2     0x5   4      OPC=movsbl_r32_r8    
  testw %r8w, %r8w                   #  3     0x9   4      OPC=testw_r16_r16    
  cmovncl %ebx, %r9d                 #  4     0xd   4      OPC=cmovncl_r32_r32  
  callq .move_r9b_to_byte_8_of_ymm1  #  5     0x11  5      OPC=callq_label      
  retq                               #  6     0x16  1      OPC=retq             
                                                                                
.size target, .-target
