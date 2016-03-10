  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  xchgw %cx, %bx  #  1     0    3      OPC=xchgw_r16_r16  
  clc             #  2     0x3  1      OPC=clc            
  adcw %cx, %bx   #  3     0x4  3      OPC=adcw_r16_r16   
  retq            #  4     0x7  1      OPC=retq           
                                                          
.size target, .-target
