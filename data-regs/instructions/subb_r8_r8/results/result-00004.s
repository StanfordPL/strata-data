  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  xorw %ax, %ax  #  1     0    3      OPC=xorw_r16_r16  
  movb %cl, %ch  #  2     0x3  2      OPC=movb_rh_r8    
  sbbb %ch, %bl  #  3     0x5  2      OPC=sbbb_r8_rh    
  retq           #  4     0x7  1      OPC=retq          
                                                        
.size target, .-target
