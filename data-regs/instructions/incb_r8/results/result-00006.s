  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  setae %al        #  2     0x3  3      OPC=setae_r8      
  adcb %al, %bl    #  3     0x6  2      OPC=adcb_r8_r8    
  retq             #  4     0x8  1      OPC=retq          
                                                          
.size target, .-target
