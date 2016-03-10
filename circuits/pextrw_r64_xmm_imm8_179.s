  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_7_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label     
  movq $0x7, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  xchgl %ebx, %ebx                   #  3     0xf   2      OPC=xchgl_r32_r32   
  callq .move_byte_6_of_ymm1_to_r8b  #  4     0x11  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx     #  5     0x16  5      OPC=callq_label     
  retq                               #  6     0x1b  1      OPC=retq            
                                                                               
.size target, .-target
