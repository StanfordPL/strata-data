  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  cltq             #  2     0x2  2      OPC=cltq          
  stc              #  3     0x4  1      OPC=stc           
  cltq             #  4     0x5  2      OPC=cltq          
  adcq %rax, %rbx  #  5     0x7  3      OPC=adcq_r64_r64  
  retq             #  6     0xa  1      OPC=retq          
                                                          
.size target, .-target
