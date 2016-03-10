  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label   
  xorq %rbx, %rbx                     #  2     0x5   3      OPC=xorq_r64_r64  
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx      #  4     0xd   5      OPC=callq_label   
  retq                                #  5     0x12  1      OPC=retq          
                                                                              
.size target, .-target
