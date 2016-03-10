  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .read_of_into_rbx           #  1     0     5      OPC=callq_label    
  callq .read_of_into_rcx           #  2     0x5   5      OPC=callq_label    
  callq .move_016_008_cx_r12b_r13b  #  3     0xa   5      OPC=callq_label    
  movsbl %r13b, %r8d                #  4     0xf   4      OPC=movsbl_r32_r8  
  callq .move_r8b_to_byte_6_of_rbx  #  5     0x13  5      OPC=callq_label    
  retq                              #  6     0x18  1      OPC=retq           
                                                                             
.size target, .-target
