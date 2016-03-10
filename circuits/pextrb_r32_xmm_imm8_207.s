  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x0, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_15_of_ymm1_to_r9b  #  2     0xa   5      OPC=callq_label     
  xaddb %bl, %r9b                     #  3     0xf   4      OPC=xaddb_r8_r8     
  retq                                #  4     0x13  1      OPC=retq            
                                                                                
.size target, .-target
