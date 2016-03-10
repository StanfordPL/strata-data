  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  adcb %al, %ch    #  2     0x3  2      OPC=adcb_rh_r8    
  xorb %bl, %ah    #  3     0x5  2      OPC=xorb_rh_r8    
  sbbw %cx, %bx    #  4     0x7  3      OPC=sbbw_r16_r16  
  retq             #  5     0xa  1      OPC=retq          
                                                          
.size target, .-target
