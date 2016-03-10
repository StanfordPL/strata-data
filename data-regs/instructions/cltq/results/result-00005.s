  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %eax, %rax  #  1     0    3      OPC=movslq_r64_r32  
  retq               #  2     0x3  1      OPC=retq            
                                                              
.size target, .-target
