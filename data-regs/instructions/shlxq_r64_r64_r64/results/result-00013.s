  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .move_064_032_rcx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movzwl %dx, %ecx                 #  2     0x5   3      OPC=movzwl_r32_r16  
  callq .move_032_064_r8d_r9d_rbx  #  3     0x8   5      OPC=callq_label     
  shlq %cl, %rbx                   #  4     0xd   3      OPC=shlq_r64_cl     
  retq                             #  5     0x10  1      OPC=retq            
                                                                             
.size target, .-target
