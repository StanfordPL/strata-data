  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  setnle %ch     #  1     0    3      OPC=setnle_rh   
  movb %ch, %bl  #  2     0x3  2      OPC=movb_r8_rh  
  retq           #  3     0x5  1      OPC=retq        
                                                      
.size target, .-target
