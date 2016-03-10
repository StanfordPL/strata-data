  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movswq %ax, %rcx                 #  1     0     4      OPC=movswq_r64_r16  
  callq .move_064_032_rcx_r8d_r9d  #  2     0x4   5      OPC=callq_label     
  movzwl %bx, %eax                 #  3     0x9   3      OPC=movzwl_r32_r16  
  callq .move_016_032_r8w_r9w_ebx  #  4     0xc   5      OPC=callq_label     
  retq                             #  5     0x11  1      OPC=retq            
                                                                             
.size target, .-target
