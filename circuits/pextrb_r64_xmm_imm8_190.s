  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_byte_8_of_ymm1_to_r9b   #  1     0     5      OPC=callq_label     
  movq $0x80, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_r9b_to_byte_15_of_ymm1  #  3     0xf   5      OPC=callq_label     
  callq .move_byte_14_of_ymm1_to_r9b  #  4     0x14  5      OPC=callq_label     
  xchgb %r9b, %bl                     #  5     0x19  3      OPC=xchgb_r8_r8     
  retq                                #  6     0x1c  1      OPC=retq            
                                                                                
.size target, .-target
