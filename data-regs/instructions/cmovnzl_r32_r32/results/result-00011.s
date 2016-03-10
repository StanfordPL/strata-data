  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movl %ecx, %r13d   #  1     0    3      OPC=movl_r32_r32    
  cmoveq %rbx, %r13  #  2     0x3  4      OPC=cmoveq_r64_r64  
  xchgl %ebx, %r13d  #  3     0x7  3      OPC=xchgl_r32_r32   
  retq               #  4     0xa  1      OPC=retq            
                                                              
.size target, .-target
