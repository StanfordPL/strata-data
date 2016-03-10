  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  clc              #  2     0x3  1      OPC=clc           
  adcl %eax, %eax  #  3     0x4  2      OPC=adcl_r32_r32  
  callq .set_cf    #  4     0x6  5      OPC=callq_label   
  adcb %al, %bl    #  5     0xb  2      OPC=adcb_r8_r8    
  retq             #  6     0xd  1      OPC=retq          
                                                          
.size target, .-target
