  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_6_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  callq .move_r8b_to_byte_4_of_ymm1  #  2     0x5   5      OPC=callq_label     
  movq $0x5, %rbx                    #  3     0xa   10     OPC=movq_r64_imm64  
  callq .move_byte_7_of_ymm1_to_r9b  #  4     0x14  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx     #  5     0x19  5      OPC=callq_label     
  retq                               #  6     0x1e  1      OPC=retq            
                                                                               
.size target, .-target
