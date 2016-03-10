  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  bswap %ebx                         #  1     0    2      OPC=bswap_r32    
  orb %bl, %bl                       #  2     0x2  2      OPC=orb_r8_r8    
  callq .move_byte_3_of_rbx_to_r9b   #  3     0x4  5      OPC=callq_label  
  callq .move_r9b_to_byte_4_of_ymm1  #  4     0x9  5      OPC=callq_label  
  retq                               #  5     0xe  1      OPC=retq         
                                                                           
.size target, .-target
