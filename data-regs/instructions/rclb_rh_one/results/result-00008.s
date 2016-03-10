  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  setae %al      #  1     0    3      OPC=setae_r8      
  decb %al       #  2     0x3  2      OPC=decb_r8       
  addw %ax, %ax  #  3     0x5  3      OPC=addw_r16_r16  
  retq           #  4     0x8  1      OPC=retq          
                                                        
.size target, .-target
