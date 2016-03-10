  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rdx, %rdx  #  1     0    3      OPC=xorq_r64_r64  
  setnz %dil       #  2     0x3  4      OPC=setnz_r8      
  xchgb %dil, %cl  #  3     0x7  3      OPC=xchgb_r8_r8   
  roll $0x1, %edx  #  4     0xa  2      OPC=roll_r32_one  
  adcb %dil, %bl   #  5     0xc  3      OPC=adcb_r8_r8    
  retq             #  6     0xf  1      OPC=retq          
                                                          
.size target, .-target
