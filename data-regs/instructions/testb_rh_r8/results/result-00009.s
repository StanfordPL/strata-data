  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  testb %ah, %bl  #  1     0    2      OPC=testb_r8_rh  
  clc             #  2     0x2  1      OPC=clc          
  retq            #  3     0x3  1      OPC=retq         
                                                        
.size target, .-target
