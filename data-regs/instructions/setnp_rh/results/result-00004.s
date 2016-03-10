  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_pf_into_rbx           #  1     0     5      OPC=callq_label  
  callq .move_byte_5_of_rbx_to_r9b  #  2     0x5   5      OPC=callq_label  
  callq .move_r9b_to_byte_5_of_rbx  #  3     0xa   5      OPC=callq_label  
  callq .set_szp_for_rbx            #  4     0xf   5      OPC=callq_label  
  callq .read_pf_into_rcx           #  5     0x14  5      OPC=callq_label  
  movb %cl, %ah                     #  6     0x19  2      OPC=movb_rh_r8   
  retq                              #  7     0x1b  1      OPC=retq         
                                                                           
.size target, .-target
