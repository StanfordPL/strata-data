  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  clc            #  1     0    1      OPC=clc         
  setae %cl      #  2     0x1  3      OPC=setae_r8    
  clc            #  3     0x4  1      OPC=clc         
  adcb %cl, %bl  #  4     0x5  2      OPC=adcb_r8_r8  
  retq           #  5     0x7  1      OPC=retq        
                                                      
.size target, .-target
