  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  xorl %r8d, %r8d                    #  1     0    3      OPC=xorl_r32_r32  
  callq .move_byte_0_of_ymm1_to_r8b  #  2     0x3  5      OPC=callq_label   
  movq %r8, %rbx                     #  3     0x8  3      OPC=movq_r64_r64  
  retq                               #  4     0xb  1      OPC=retq          
                                                                            
.size target, .-target
