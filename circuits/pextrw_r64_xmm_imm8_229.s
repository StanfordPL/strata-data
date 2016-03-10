  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_byte_11_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label     
  movq $0x4, %rbx                     #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_byte_10_of_ymm1_to_r8b  #  3     0xf   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx      #  4     0x14  5      OPC=callq_label     
  retq                                #  5     0x19  1      OPC=retq            
                                                                                
.size target, .-target
