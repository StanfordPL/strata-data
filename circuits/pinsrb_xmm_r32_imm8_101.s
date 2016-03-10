  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  movl %ebx, %ebx                    #  1     0    2      OPC=movl_r32_r32    
  xorl %r9d, %r9d                    #  2     0x2  3      OPC=xorl_r32_r32    
  cmoveq %rbx, %r9                   #  3     0x5  4      OPC=cmoveq_r64_r64  
  callq .move_r9b_to_byte_5_of_ymm1  #  4     0x9  5      OPC=callq_label     
  retq                               #  5     0xe  1      OPC=retq            
                                                                              
.size target, .-target
