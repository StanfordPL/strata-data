  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  clc            #  1     0    1      OPC=clc           
  sbbw %cx, %bx  #  2     0x1  3      OPC=sbbw_r16_r16  
  retq           #  3     0x4  1      OPC=retq          
                                                        
.size target, .-target
