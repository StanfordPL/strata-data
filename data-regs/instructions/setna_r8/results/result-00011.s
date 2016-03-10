  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .read_cf_into_rcx           #  1     0     5      OPC=callq_label      
  callq .read_zf_into_rbx           #  2     0x5   5      OPC=callq_label      
  setnae %r8b                       #  3     0xa   4      OPC=setnae_r8        
  cmovnzw %cx, %bx                  #  4     0xe   4      OPC=cmovnzw_r16_r16  
  callq .move_r8b_to_byte_4_of_rbx  #  5     0x12  5      OPC=callq_label      
  retq                              #  6     0x17  1      OPC=retq             
                                                                               
.size target, .-target
