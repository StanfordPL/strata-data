  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x40, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  movzwl %cx, %r11d                 #  2     0xa   4      OPC=movzwl_r32_r16  
  xchgb %r11b, %cl                  #  3     0xe   3      OPC=xchgb_r8_r8     
  callq .move_016_008_cx_r12b_r13b  #  4     0x11  5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_bx  #  5     0x16  5      OPC=callq_label     
  retq                              #  6     0x1b  1      OPC=retq            
                                                                              
.size target, .-target
