  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  callq .move_byte_10_of_ymm1_to_r8b  #  1     0    5      OPC=callq_label   
  xorl %ebx, %ebx                     #  2     0x5  2      OPC=xorl_r32_r32  
  xchgb %bl, %r8b                     #  3     0x7  3      OPC=xchgb_r8_r8   
  retq                                #  4     0xa  1      OPC=retq          
                                                                             
.size target, .-target
