  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  setc %ah         #  2     0x3  4      OPC=setc_rh       
  orq %rax, %rax   #  3     0x7  3      OPC=orq_r64_r64   
  adcl %ebx, %ebx  #  4     0xa  2      OPC=adcl_r32_r32  
  retq             #  5     0xc  1      OPC=retq          
                                                          
.size target, .-target
