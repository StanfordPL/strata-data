  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_of_into_rbx           #  1     0     5      OPC=callq_label  
  orq %rbx, %rbx                    #  2     0x5   3      OPC=orq_r64_r64  
  callq .read_pf_into_rbx           #  3     0x8   5      OPC=callq_label  
  callq .move_byte_2_of_rbx_to_r9b  #  4     0xd   5      OPC=callq_label  
  callq .move_r9b_to_byte_6_of_rbx  #  5     0x12  5      OPC=callq_label  
  retq                              #  6     0x17  1      OPC=retq         
                                                                           
.size target, .-target
