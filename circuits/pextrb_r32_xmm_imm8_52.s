  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  xorq %rbx, %rbx                    #  1     0    3      OPC=xorq_r64_r64  
  andl %ebx, %ebx                    #  2     0x3  2      OPC=andl_r32_r32  
  callq .move_byte_4_of_ymm1_to_r9b  #  3     0x5  5      OPC=callq_label   
  xaddb %r9b, %bl                    #  4     0xa  4      OPC=xaddb_r8_r8   
  retq                               #  5     0xe  1      OPC=retq          
                                                                            
.size target, .-target
