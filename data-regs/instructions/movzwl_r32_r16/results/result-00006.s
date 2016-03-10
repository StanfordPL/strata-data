  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .set_pf                     #  1     0     5      OPC=callq_label  
  callq .read_pf_into_rbx           #  2     0x5   5      OPC=callq_label  
  callq .move_byte_3_of_rbx_to_r9b  #  3     0xa   5      OPC=callq_label  
  callq .move_r9b_to_byte_4_of_rbx  #  4     0xf   5      OPC=callq_label  
  callq .move_016_008_cx_r12b_r13b  #  5     0x14  5      OPC=callq_label  
  callq .move_008_016_r12b_r13b_bx  #  6     0x19  5      OPC=callq_label  
  retq                              #  7     0x1e  1      OPC=retq         
                                                                           
.size target, .-target
