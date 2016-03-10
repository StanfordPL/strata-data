  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_016_008_cx_r8b_r9b  #  1     0     5      OPC=callq_label     
  movq $0x6, %rbx                 #  2     0x5   10     OPC=movq_r64_imm64  
  movsbl %r9b, %edx               #  3     0xf   4      OPC=movsbl_r32_r8   
  callq .move_008_016_r8b_r9b_dx  #  4     0x13  5      OPC=callq_label     
  xchgl %ebx, %edx                #  5     0x18  2      OPC=xchgl_r32_r32   
  callq .move_008_016_r8b_r9b_bx  #  6     0x1a  5      OPC=callq_label     
  retq                            #  7     0x1f  1      OPC=retq            
                                                                            
.size target, .-target
