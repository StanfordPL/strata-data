  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  rolw $0x1, %ax   #  2     0x3  3      OPC=rolw_r16_one  
  shlq $0x1, %rax  #  3     0x6  3      OPC=shlq_r64_one  
  adcb %cl, %bl    #  4     0x9  2      OPC=adcb_r8_r8    
  retq             #  5     0xb  1      OPC=retq          
                                                          
.size target, .-target
