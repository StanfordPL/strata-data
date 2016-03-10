  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  xchgb %bl, %bl   #  2     0x3  2      OPC=xchgb_r8_r8   
  sbbl %ecx, %ebx  #  3     0x5  2      OPC=sbbl_r32_r32  
  retq             #  4     0x7  1      OPC=retq          
                                                          
.size target, .-target
