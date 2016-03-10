  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_of_into_rcx           #  1     0     5      OPC=callq_label  
  callq .set_cf                     #  2     0x5   5      OPC=callq_label  
  callq .read_cf_into_rbx           #  3     0xa   5      OPC=callq_label  
  callq .move_016_008_cx_r8b_r9b    #  4     0xf   5      OPC=callq_label  
  sarq %cl, %rbx                    #  5     0x14  3      OPC=sarq_r64_cl  
  callq .move_r8b_to_byte_2_of_rbx  #  6     0x17  5      OPC=callq_label  
  movb %bl, %ah                     #  7     0x1c  2      OPC=movb_rh_r8   
  retq                              #  8     0x1e  1      OPC=retq         
                                                                           
.size target, .-target
