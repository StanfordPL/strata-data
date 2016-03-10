  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label    
  callq .move_byte_14_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label    
  movzbq %r8b, %rbx                   #  3     0xa   4      OPC=movzbq_r64_r8  
  callq .move_008_016_r8b_r9b_bx      #  4     0xe   5      OPC=callq_label    
  retq                                #  5     0x13  1      OPC=retq           
                                                                               
.size target, .-target
