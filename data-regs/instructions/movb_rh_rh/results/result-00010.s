  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  movb %bh, %bl  #  1     0    3      OPC=movb_r8_rh    
  movw %bx, %ax  #  2     0x3  3      OPC=movw_r16_r16  
  retq           #  3     0x6  1      OPC=retq          
                                                        
.size target, .-target
