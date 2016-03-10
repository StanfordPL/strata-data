  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  cmoval %ebx, %ecx  #  1     0    3      OPC=cmoval_r32_r32  
  notb %bl           #  2     0x3  2      OPC=notb_r8         
  negb %bl           #  3     0x5  2      OPC=negb_r8         
  xchgl %ebx, %ecx   #  4     0x7  2      OPC=xchgl_r32_r32   
  retq               #  5     0x9  1      OPC=retq            
                                                              
.size target, .-target
