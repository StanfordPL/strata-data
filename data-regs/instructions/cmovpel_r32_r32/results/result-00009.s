  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP  Bytes  Opcode               
.target:                           #        0    0      OPC=<label>          
  xchgl %ebx, %ecx                 #  1     0    2      OPC=xchgl_r32_r32    
  callq .move_064_032_rcx_r8d_r9d  #  2     0x2  5      OPC=callq_label      
  cmovnpl %r8d, %ebx               #  3     0x7  4      OPC=cmovnpl_r32_r32  
  retq                             #  4     0xb  1      OPC=retq             
                                                                             
.size target, .-target
