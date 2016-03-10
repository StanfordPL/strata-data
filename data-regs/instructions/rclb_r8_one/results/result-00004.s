  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  adcb %bl, %bl  #  1     0    2      OPC=adcb_r8_r8  
  retq           #  2     0x2  1      OPC=retq        
                                                      
.size target, .-target
