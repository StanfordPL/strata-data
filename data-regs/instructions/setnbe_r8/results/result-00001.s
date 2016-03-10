  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .read_zf_into_rbx           #  1     0     5      OPC=callq_label   
  rclw $0x1, %bx                    #  2     0x5   3      OPC=rclw_r16_one  
  callq .set_szp_for_bx             #  3     0x8   5      OPC=callq_label   
  callq .read_zf_into_rbx           #  4     0xd   5      OPC=callq_label   
  callq .move_byte_3_of_rbx_to_r8b  #  5     0x12  5      OPC=callq_label   
  callq .move_r8b_to_byte_2_of_rbx  #  6     0x17  5      OPC=callq_label   
  retq                              #  7     0x1c  1      OPC=retq          
                                                                            
.size target, .-target
