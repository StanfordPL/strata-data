  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  shlb $0x1, %al   #  2     0x2  2      OPC=shlb_r8_one   
  rclw $0x1, %ax   #  3     0x4  3      OPC=rclw_r16_one  
  stc              #  4     0x7  1      OPC=stc           
  adcq %rax, %rbx  #  5     0x8  3      OPC=adcq_r64_r64  
  retq             #  6     0xb  1      OPC=retq          
                                                          
.size target, .-target
