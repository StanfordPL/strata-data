  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xorw %ax, %ax   #  1     0    3      OPC=xorw_r16_r16  
  xorw %bx, %ax   #  2     0x3  3      OPC=xorw_r16_r16  
  cwtl            #  3     0x6  1      OPC=cwtl          
  clc             #  4     0x7  1      OPC=clc           
  adcw %bx, %bx   #  5     0x8  3      OPC=adcw_r16_r16  
  rclw $0x1, %ax  #  6     0xb  3      OPC=rclw_r16_one  
  retq            #  7     0xe  1      OPC=retq          
                                                         
.size target, .-target
