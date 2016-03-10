  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswl %ax, %r10d                  #  1     0     4      OPC=movswl_r32_r16  
  movswl %ax, %r11d                  #  2     0x4   4      OPC=movswl_r32_r16  
  movsbl %al, %eax                   #  3     0x8   3      OPC=movsbl_r32_r8   
  callq .move_032_064_r10d_r11d_rcx  #  4     0xb   5      OPC=callq_label     
  xchgl %ecx, %eax                   #  5     0x10  2      OPC=xchgl_r32_r32   
  retq                               #  6     0x12  1      OPC=retq            
                                                                               
.size target, .-target
