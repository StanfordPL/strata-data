  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  xorl %ebx, %ebx                    #  1     0    2      OPC=xorl_r32_r32  
  sall $0x1, %ebx                    #  2     0x2  2      OPC=sall_r32_one  
  callq .move_byte_1_of_ymm1_to_r9b  #  3     0x4  5      OPC=callq_label   
  addb %r9b, %bl                     #  4     0x9  3      OPC=addb_r8_r8    
  retq                               #  5     0xc  1      OPC=retq          
                                                                            
.size target, .-target
