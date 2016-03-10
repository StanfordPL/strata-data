  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_6_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label     
  movq $0x2, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  movzbl %r9b, %r12d                 #  3     0xf   4      OPC=movzbl_r32_r8   
  xchgb %bl, %r12b                   #  4     0x13  3      OPC=xchgb_r8_r8     
  retq                               #  5     0x16  1      OPC=retq            
                                                                               
.size target, .-target
