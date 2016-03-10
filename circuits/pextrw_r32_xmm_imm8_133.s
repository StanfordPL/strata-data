  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_byte_11_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label    
  callq .move_r9b_to_byte_7_of_ymm1   #  2     0x5   5      OPC=callq_label    
  callq .move_r9b_to_byte_12_of_ymm1  #  3     0xa   5      OPC=callq_label    
  callq .move_byte_10_of_ymm1_to_r8b  #  4     0xf   5      OPC=callq_label    
  movzbq %r8b, %rbx                   #  5     0x14  4      OPC=movzbq_r64_r8  
  callq .move_008_016_r8b_r9b_bx      #  6     0x18  5      OPC=callq_label    
  retq                                #  7     0x1d  1      OPC=retq           
                                                                               
.size target, .-target
