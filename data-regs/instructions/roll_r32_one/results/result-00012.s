  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  stc              #  1     0    1      OPC=stc           
  movl %ebx, %esi  #  2     0x1  2      OPC=movl_r32_r32  
  rcll $0x1, %esi  #  3     0x3  2      OPC=rcll_r32_one  
  adcl %ebx, %ebx  #  4     0x5  2      OPC=adcl_r32_r32  
  retq             #  5     0x7  1      OPC=retq          
                                                          
.size target, .-target
