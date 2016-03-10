  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  adcl %ebx, %eax  #  2     0x3  2      OPC=adcl_r32_r32  
  shll $0x1, %ebx  #  3     0x5  2      OPC=shll_r32_one  
  shll $0x1, %eax  #  4     0x7  2      OPC=shll_r32_one  
  retq             #  5     0x9  1      OPC=retq          
                                                          
.size target, .-target
