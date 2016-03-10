  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  cmovnzl %ecx, %ebx                #  1     0    3      OPC=cmovnzl_r32_r32  
  callq .move_byte_4_of_rbx_to_r8b  #  2     0x3  5      OPC=callq_label      
  xaddb %r8b, %bl                   #  3     0x8  4      OPC=xaddb_r8_r8      
  retq                              #  4     0xc  1      OPC=retq             
                                                                              
.size target, .-target
