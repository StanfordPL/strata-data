  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_of_into_rbx           #  1     0     5      OPC=callq_label  
  callq .move_016_008_bx_r12b_r13b  #  2     0x5   5      OPC=callq_label  
  decb %r12b                        #  3     0xa   3      OPC=decb_r8      
  callq .read_sf_into_rbx           #  4     0xd   5      OPC=callq_label  
  retq                              #  5     0x12  1      OPC=retq         
                                                                           
.size target, .-target
