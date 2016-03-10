  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x1, %rcx  #  1     0    10     OPC=movq_r64_imm64  
  clc              #  2     0xa  1      OPC=clc             
  adcl %ecx, %ecx  #  3     0xb  2      OPC=adcl_r32_r32    
  adcl %ebx, %ebx  #  4     0xd  2      OPC=adcl_r32_r32    
  retq             #  5     0xf  1      OPC=retq            
                                                            
.size target, .-target
