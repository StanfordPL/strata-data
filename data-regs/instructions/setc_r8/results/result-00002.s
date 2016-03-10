  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .clear_sf                   #  1     0     5      OPC=callq_label   
  callq .read_sf_into_rbx           #  2     0x5   5      OPC=callq_label   
  rcll $0x1, %ebx                   #  3     0xa   2      OPC=rcll_r32_one  
  callq .move_016_008_bx_r8b_r9b    #  4     0xc   5      OPC=callq_label   
  callq .move_r9b_to_byte_6_of_rbx  #  5     0x11  5      OPC=callq_label   
  retq                              #  6     0x16  1      OPC=retq          
                                                                            
.size target, .-target
