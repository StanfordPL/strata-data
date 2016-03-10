  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x4, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r8_r9      #  2     0xa   5      OPC=callq_label     
  callq .move_r9b_to_byte_6_of_ymm1   #  3     0xf   5      OPC=callq_label     
  callq .move_byte_12_of_ymm1_to_r8b  #  4     0x14  5      OPC=callq_label     
  xaddb %bl, %r8b                     #  5     0x19  4      OPC=xaddb_r8_r8     
  retq                                #  6     0x1d  1      OPC=retq            
                                                                                
.size target, .-target
