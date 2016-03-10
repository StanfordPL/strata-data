  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzwl %bx, %edx   #  1     0    3      OPC=movzwl_r32_r16  
  movswq %ax, %rbx   #  2     0x3  4      OPC=movswq_r64_r16  
  movslq %edx, %rax  #  3     0x7  3      OPC=movslq_r64_r32  
  retq               #  4     0xa  1      OPC=retq            
                                                              
.size target, .-target
