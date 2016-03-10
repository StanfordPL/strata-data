  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_cx_r10b_r11b  #  1     0     5      OPC=callq_label     
  movq $0x10, %rbx                  #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_008_016_r10b_r11b_dx  #  3     0xf   5      OPC=callq_label     
  callq .move_016_008_dx_r8b_r9b    #  4     0x14  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx    #  5     0x19  5      OPC=callq_label     
  retq                              #  6     0x1e  1      OPC=retq            
                                                                              
.size target, .-target
