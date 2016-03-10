  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_6_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  movq $0x8, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  movzbl %r8b, %r9d                  #  3     0xf   4      OPC=movzbl_r32_r8   
  xaddb %bl, %r9b                    #  4     0x13  4      OPC=xaddb_r8_r8     
  retq                               #  5     0x17  1      OPC=retq            
                                                                               
.size target, .-target
