  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  setb %r8b                         #  1     0     4      OPC=setb_r8         
  movq $0x6, %rbx                   #  2     0x4   10     OPC=movq_r64_imm64  
  callq .move_byte_5_of_rbx_to_r9b  #  3     0xe   5      OPC=callq_label     
  xaddb %bl, %r8b                   #  4     0x13  4      OPC=xaddb_r8_r8     
  callq .move_r9b_to_byte_3_of_rbx  #  5     0x17  5      OPC=callq_label     
  retq                              #  6     0x1c  1      OPC=retq            
                                                                              
.size target, .-target
