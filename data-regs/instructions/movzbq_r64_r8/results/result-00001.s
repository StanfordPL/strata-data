  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movsbl %cl, %ebx                   #  1     0     3      OPC=movsbl_r32_r8   
  callq .move_064_032_rbx_r12d_r13d  #  2     0x3   5      OPC=callq_label     
  movq $0x0, %rcx                    #  3     0x8   10     OPC=movq_r64_imm64  
  callq .move_008_016_r12b_r13b_cx   #  4     0x12  5      OPC=callq_label     
  callq .move_064_032_rcx_r12d_r13d  #  5     0x17  5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ebx  #  6     0x1c  5      OPC=callq_label     
  retq                               #  7     0x21  1      OPC=retq            
                                                                               
.size target, .-target
