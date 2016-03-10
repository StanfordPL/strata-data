  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  adcb %bl, %bl    #  2     0x3  2      OPC=adcb_r8_r8    
  retq             #  3     0x5  1      OPC=retq          
                                                          
.size target, .-target
