  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  movq %rcx, %rsi  #  1     0    3      OPC=movq_r64_r64  
  xorq %rax, %rax  #  2     0x3  3      OPC=xorq_r64_r64  
  adcq %rsi, %rbx  #  3     0x6  3      OPC=adcq_r64_r64  
  retq             #  4     0x9  1      OPC=retq          
                                                          
.size target, .-target
