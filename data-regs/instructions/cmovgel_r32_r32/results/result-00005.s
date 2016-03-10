  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  cmovnll %ecx, %ebx               #  1     0     3      OPC=cmovnll_r32_r32  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label      
  popcntl %r8d, %r13d              #  3     0x8   5      OPC=popcntl_r32_r32  
  cmoveq %r13, %rbx                #  4     0xd   4      OPC=cmoveq_r64_r64   
  retq                             #  5     0x11  1      OPC=retq             
                                                                              
.size target, .-target
