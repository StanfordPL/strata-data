  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_8_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  movb %r8b, %bpl                    #  2     0x5   3      OPC=movb_r8_r8      
  movq $0x10, %rbx                   #  3     0x8   10     OPC=movq_r64_imm64  
  xchgb %bpl, %bl                    #  4     0x12  3      OPC=xchgb_r8_r8     
  retq                               #  5     0x15  1      OPC=retq            
                                                                               
.size target, .-target
