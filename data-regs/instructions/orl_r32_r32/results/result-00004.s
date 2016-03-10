  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  xchgl %ebx, %ecx                   #  1     0     2      OPC=xchgl_r32_r32  
  orq %rcx, %rbx                     #  2     0x2   3      OPC=orq_r64_r64    
  callq .move_064_032_rbx_r10d_r11d  #  3     0x5   5      OPC=callq_label    
  roll $0x1, %r11d                   #  4     0xa   3      OPC=roll_r32_one   
  xaddl %r10d, %r11d                 #  5     0xd   4      OPC=xaddl_r32_r32  
  retq                               #  6     0x11  1      OPC=retq           
                                                                              
.size target, .-target
