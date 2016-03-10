  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x8, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  clc                               #  2     0xa   1      OPC=clc             
  decl %ebx                         #  3     0xb   2      OPC=decl_r32        
  callq .move_128_064_xmm1_r10_r11  #  4     0xd   5      OPC=callq_label     
  cmovaq %r11, %rbx                 #  5     0x12  4      OPC=cmovaq_r64_r64  
  retq                              #  6     0x16  1      OPC=retq            
                                                                              
.size target, .-target
