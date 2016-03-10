  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  xorl %ebx, %ebx                    #  1     0    2      OPC=xorl_r32_r32  
  rclb $0x1, %bh                     #  2     0x2  2      OPC=rclb_rh_one   
  callq .move_byte_3_of_ymm1_to_r8b  #  3     0x4  5      OPC=callq_label   
  xaddb %r8b, %bl                    #  4     0x9  4      OPC=xaddb_r8_r8   
  retq                               #  5     0xd  1      OPC=retq          
                                                                            
.size target, .-target
