  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  xchgl %ebx, %ecx                   #  1     0     2      OPC=xchgl_r32_r32   
  callq .move_064_032_rbx_r12d_r13d  #  2     0x2   5      OPC=callq_label     
  cmoveq %rcx, %r12                  #  3     0x7   4      OPC=cmoveq_r64_r64  
  callq .move_032_064_r12d_r13d_rbx  #  4     0xb   5      OPC=callq_label     
  retq                               #  5     0x10  1      OPC=retq            
                                                                               
.size target, .-target
