  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  callq .set_cf    #  2     0x3  5      OPC=callq_label   
  seto %r12b       #  3     0x8  4      OPC=seto_r8       
  adcb %r12b, %bl  #  4     0xc  3      OPC=adcb_r8_r8    
  retq             #  5     0xf  1      OPC=retq          
                                                          
.size target, .-target
