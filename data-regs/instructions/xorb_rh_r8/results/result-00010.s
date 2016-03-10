  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  xorb %ah, %bl  #  1     0    2      OPC=xorb_r8_rh    
  xorw %ax, %ax  #  2     0x2  3      OPC=xorw_r16_r16  
  addb %bl, %ah  #  3     0x5  2      OPC=addb_rh_r8    
  retq           #  4     0x7  1      OPC=retq          
                                                        
.size target, .-target
