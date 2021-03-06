  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  xorq %rax, %rax    #  1     0    3      OPC=xorq_r64_r64    
  movslq %ebx, %r15  #  2     0x3  3      OPC=movslq_r64_r32  
  adcl %r15d, %eax   #  3     0x6  3      OPC=adcl_r32_r32    
  adcl %eax, %r15d   #  4     0x9  3      OPC=adcl_r32_r32    
  movq %r15, %rbx    #  5     0xc  3      OPC=movq_r64_r64    
  retq               #  6     0xf  1      OPC=retq            
                                                              
.size target, .-target
