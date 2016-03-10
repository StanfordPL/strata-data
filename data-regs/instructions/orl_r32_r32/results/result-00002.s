  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  xchgl %ecx, %ebx                   #  1     0     2      OPC=xchgl_r32_r32  
  orq %rbx, %rcx                     #  2     0x2   3      OPC=orq_r64_r64    
  callq .move_064_032_rcx_r8d_r9d    #  3     0x5   5      OPC=callq_label    
  callq .move_064_032_rcx_r10d_r11d  #  4     0xa   5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rbx    #  5     0xf   5      OPC=callq_label    
  xaddl %r10d, %r11d                 #  6     0x14  4      OPC=xaddl_r32_r32  
  retq                               #  7     0x18  1      OPC=retq           
                                                                              
.size target, .-target
