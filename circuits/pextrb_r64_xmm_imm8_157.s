  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  xorl %ebx, %ebx                     #  1     0    2      OPC=xorl_r32_r32  
  rclw $0x1, %bx                      #  2     0x2  3      OPC=rclw_r16_one  
  callq .move_byte_13_of_ymm1_to_r9b  #  3     0x5  5      OPC=callq_label   
  xchgb %bl, %r9b                     #  4     0xa  3      OPC=xchgb_r8_r8   
  retq                                #  5     0xd  1      OPC=retq          
                                                                             
.size target, .-target
