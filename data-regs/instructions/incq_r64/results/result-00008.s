  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  cltq             #  2     0x3  2      OPC=cltq          
  setne %al        #  3     0x5  3      OPC=setne_r8      
  stc              #  4     0x8  1      OPC=stc           
  adcq %rax, %rbx  #  5     0x9  3      OPC=adcq_r64_r64  
  retq             #  6     0xc  1      OPC=retq          
                                                          
.size target, .-target
