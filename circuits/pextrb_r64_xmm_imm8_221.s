  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  xorq %rbx, %rbx                     #  1     0    3      OPC=xorq_r64_r64  
  roll $0x1, %ebx                     #  2     0x3  2      OPC=roll_r32_one  
  callq .move_byte_13_of_ymm1_to_r8b  #  3     0x5  5      OPC=callq_label   
  xaddb %r8b, %bl                     #  4     0xa  4      OPC=xaddb_r8_r8   
  retq                                #  5     0xe  1      OPC=retq          
                                                                             
.size target, .-target
