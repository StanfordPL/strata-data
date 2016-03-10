  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswl %ax, %ebx  #  1     0    3      OPC=movswl_r32_r16  
  movzbq %al, %rax  #  2     0x3  4      OPC=movzbq_r64_r8   
  xchgl %ebx, %eax  #  3     0x7  2      OPC=xchgl_r32_r32   
  retq              #  4     0x9  1      OPC=retq            
                                                             
.size target, .-target
