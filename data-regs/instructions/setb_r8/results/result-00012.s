  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  setc %dh         #  1     0    3      OPC=setc_rh        
  movzbw %dh, %bx  #  2     0x3  4      OPC=movzbw_r16_rh  
  retq             #  3     0x7  1      OPC=retq           
                                                           
.size target, .-target
