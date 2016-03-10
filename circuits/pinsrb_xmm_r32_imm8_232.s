  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  movsbl %bl, %edx                   #  1     0    3      OPC=movsbl_r32_r8  
  callq .move_032_016_edx_r8w_r9w    #  2     0x3  5      OPC=callq_label    
  callq .move_r8b_to_byte_8_of_ymm1  #  3     0x8  5      OPC=callq_label    
  retq                               #  4     0xd  1      OPC=retq           
                                                                             
.size target, .-target
