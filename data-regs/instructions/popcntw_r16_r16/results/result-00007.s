  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movzwl %cx, %ecx    #  1     0     3      OPC=movzwl_r32_r16   
  movzbq %cl, %rbx    #  2     0x3   4      OPC=movzbq_r64_r8    
  popcntq %rcx, %rax  #  3     0x7   5      OPC=popcntq_r64_r64  
  movq %rax, %rdx     #  4     0xc   3      OPC=movq_r64_r64     
  xchgl %ebx, %edx    #  5     0xf   2      OPC=xchgl_r32_r32    
  retq                #  6     0x11  1      OPC=retq             
                                                                 
.size target, .-target
