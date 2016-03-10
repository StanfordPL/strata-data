  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  xorq %rbx, %rbx                     #  1     0    3      OPC=xorq_r64_r64  
  rclb $0x1, %bh                      #  2     0x3  2      OPC=rclb_rh_one   
  callq .move_byte_12_of_ymm1_to_r9b  #  3     0x5  5      OPC=callq_label   
  xaddb %bl, %r9b                     #  4     0xa  4      OPC=xaddb_r8_r8   
  retq                                #  5     0xe  1      OPC=retq          
                                                                             
.size target, .-target
