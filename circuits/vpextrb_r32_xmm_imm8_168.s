  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0x4, %rbx                 #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r8_r9  #  2     0xa   5      OPC=callq_label     
  movzwq %r9w, %rbp               #  3     0xf   4      OPC=movzwq_r64_r16  
  xchgb %bpl, %bl                 #  4     0x13  3      OPC=xchgb_r8_r8     
  retq                            #  5     0x16  1      OPC=retq            
                                                                            
.size target, .-target
