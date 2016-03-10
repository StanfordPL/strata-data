  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  cmovnpw %cx, %bx  #  1     0    4      OPC=cmovnpw_r16_r16  
  clc               #  2     0x4  1      OPC=clc              
  setc %ah          #  3     0x5  3      OPC=setc_rh          
  addb %ah, %bh     #  4     0x8  2      OPC=addb_rh_rh       
  retq              #  5     0xa  1      OPC=retq             
                                                              
.size target, .-target
