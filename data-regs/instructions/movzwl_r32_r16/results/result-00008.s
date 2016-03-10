  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_016_008_cx_r8b_r9b     #  1     0     5      OPC=callq_label     
  movsbl %cl, %ecx                   #  2     0x5   3      OPC=movsbl_r32_r8   
  callq .move_008_016_r8b_r9b_cx     #  3     0x8   5      OPC=callq_label     
  movq $0xffffffffffffff80, %rbx     #  4     0xd   10     OPC=movq_r64_imm64  
  callq .move_064_032_rcx_r12d_r13d  #  5     0x17  5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ebx  #  6     0x1c  5      OPC=callq_label     
  retq                               #  7     0x21  1      OPC=retq            
                                                                               
.size target, .-target
