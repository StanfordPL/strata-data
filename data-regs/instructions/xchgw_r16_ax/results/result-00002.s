  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movzwl %bx, %r10d                #  1     0     4      OPC=movzwl_r32_r16  
  movswq %ax, %rcx                 #  2     0x4   4      OPC=movswq_r64_r16  
  callq .move_064_032_rcx_r8d_r9d  #  3     0x8   5      OPC=callq_label     
  movslq %r10d, %rax               #  4     0xd   3      OPC=movslq_r64_r32  
  callq .move_032_064_r8d_r9d_rbx  #  5     0x10  5      OPC=callq_label     
  retq                             #  6     0x15  1      OPC=retq            
                                                                             
.size target, .-target
