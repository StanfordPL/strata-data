  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  setne %ah        #  2     0x3  3      OPC=setne_rh      
  adcb %ah, %bl    #  3     0x6  2      OPC=adcb_r8_rh    
  addw %bx, %bx    #  4     0x8  3      OPC=addw_r16_r16  
  retq             #  5     0xb  1      OPC=retq          
                                                          
.size target, .-target
