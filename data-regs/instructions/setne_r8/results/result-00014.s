  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  clc               #  1     0    1      OPC=clc              
  setnz %bh         #  2     0x1  3      OPC=setnz_rh         
  setb %bl          #  3     0x4  3      OPC=setb_r8          
  popcntw %bx, %bx  #  4     0x7  5      OPC=popcntw_r16_r16  
  retq              #  5     0xc  1      OPC=retq             
                                                              
.size target, .-target
