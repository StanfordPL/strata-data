  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  setnp %ah        #  2     0x2  3      OPC=setnp_rh      
  stc              #  3     0x5  1      OPC=stc           
  adcq %rbx, %rax  #  4     0x6  3      OPC=adcq_r64_r64  
  movq %rax, %rbx  #  5     0x9  3      OPC=movq_r64_r64  
  retq             #  6     0xc  1      OPC=retq          
                                                          
.size target, .-target
