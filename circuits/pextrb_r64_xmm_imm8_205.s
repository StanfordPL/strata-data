  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  xorq %rbx, %rbx                     #  1     0     3      OPC=xorq_r64_r64  
  callq .move_128_064_xmm1_r8_r9      #  2     0x3   5      OPC=callq_label   
  callq .move_r8b_to_byte_14_of_ymm1  #  3     0x8   5      OPC=callq_label   
  callq .move_byte_13_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label   
  xaddb %bl, %r8b                     #  5     0x12  4      OPC=xaddb_r8_r8   
  retq                                #  6     0x16  1      OPC=retq          
                                                                              
.size target, .-target
