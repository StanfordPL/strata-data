  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_sf_into_rbx           #  1     0     5      OPC=callq_label  
  setnge %bl                        #  2     0x5   3      OPC=setnge_r8    
  callq .move_016_008_bx_r8b_r9b    #  3     0x8   5      OPC=callq_label  
  rolb $0x1, %bh                    #  4     0xd   2      OPC=rolb_rh_one  
  callq .move_r8b_to_byte_5_of_rbx  #  5     0xf   5      OPC=callq_label  
  retq                              #  6     0x14  1      OPC=retq         
                                                                           
.size target, .-target
