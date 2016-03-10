  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  addq %rbx, %rax  #  2     0x3  3      OPC=addq_r64_r64  
  adcq %rbx, %rbx  #  3     0x6  3      OPC=adcq_r64_r64  
  rolq $0x1, %rax  #  4     0x9  3      OPC=rolq_r64_one  
  retq             #  5     0xc  1      OPC=retq          
                                                          
.size target, .-target
