  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  setno %al         #  1     0    3      OPC=setno_r8         
  cbtw              #  2     0x3  2      OPC=cbtw             
  clc               #  3     0x5  1      OPC=clc              
  adcb %al, %ah     #  4     0x6  2      OPC=adcb_rh_r8       
  cmovnzw %cx, %bx  #  5     0x8  4      OPC=cmovnzw_r16_r16  
  retq              #  6     0xc  1      OPC=retq             
                                                              
.size target, .-target
