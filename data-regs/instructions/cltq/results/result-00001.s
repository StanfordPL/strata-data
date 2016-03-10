  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %eax, %rbp  #  1     0    3      OPC=movslq_r64_r32  
  movq %rbp, %rax    #  2     0x3  3      OPC=movq_r64_r64    
  retq               #  3     0x6  1      OPC=retq            
                                                              
.size target, .-target
