  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_byte_3_of_rbx_to_r8b  #  1     0     5      OPC=callq_label   
  callq .move_016_008_bx_r12b_r13b  #  2     0x5   5      OPC=callq_label   
  callq .move_008_016_r12b_r13b_bx  #  3     0xa   5      OPC=callq_label   
  rolb $0x1, %r8b                   #  4     0xf   3      OPC=rolb_r8_one   
  rcll $0x1, %ebx                   #  5     0x12  2      OPC=rcll_r32_one  
  retq                              #  6     0x14  1      OPC=retq          
                                                                            
.size target, .-target
