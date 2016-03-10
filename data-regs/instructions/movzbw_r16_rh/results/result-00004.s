  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .clear_of                   #  1     0     5      OPC=callq_label  
  callq .read_of_into_rbx           #  2     0x5   5      OPC=callq_label  
  callq .move_byte_3_of_rbx_to_r8b  #  3     0xa   5      OPC=callq_label  
  movb %ah, %bl                     #  4     0xf   2      OPC=movb_r8_rh   
  callq .move_r8b_to_byte_7_of_rbx  #  5     0x11  5      OPC=callq_label  
  retq                              #  6     0x16  1      OPC=retq         
                                                                           
.size target, .-target
