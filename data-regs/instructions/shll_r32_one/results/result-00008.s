  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  xorq %rax, %rax    #  1     0    3      OPC=xorq_r64_r64    
  clc                #  2     0x3  1      OPC=clc             
  movslq %ebx, %rsi  #  3     0x4  3      OPC=movslq_r64_r32  
  adcl %ebx, %eax    #  4     0x7  2      OPC=adcl_r32_r32    
  adcl %eax, %ebx    #  5     0x9  2      OPC=adcl_r32_r32    
  clc                #  6     0xb  1      OPC=clc             
  adcl %esi, %eax    #  7     0xc  2      OPC=adcl_r32_r32    
  retq               #  8     0xe  1      OPC=retq            
                                                              
.size target, .-target
