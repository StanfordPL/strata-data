  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movzwl %cx, %edx                   #  1     0     3      OPC=movzwl_r32_r16  
  callq .move_016_008_bx_r12b_r13b   #  2     0x3   5      OPC=callq_label     
  callq .move_064_032_rdx_r10d_r11d  #  3     0x8   5      OPC=callq_label     
  movslq %r10d, %rbx                 #  4     0xd   3      OPC=movslq_r64_r32  
  callq .move_008_016_r12b_r13b_dx   #  5     0x10  5      OPC=callq_label     
  callq .move_064_032_rdx_r10d_r11d  #  6     0x15  5      OPC=callq_label     
  callq .move_032_064_r10d_r11d_rcx  #  7     0x1a  5      OPC=callq_label     
  retq                               #  8     0x1f  1      OPC=retq            
                                                                               
.size target, .-target
