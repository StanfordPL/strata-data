  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %ebx, %rdx  #  1     0    3      OPC=movslq_r64_r32  
  xchgl %eax, %edx   #  2     0x3  2      OPC=xchgl_r32_r32   
  movq %rdx, %rbx    #  3     0x5  3      OPC=movq_r64_r64    
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
