  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %bh, %ax  #  1     0    4      OPC=movzbw_r16_rh  
  xaddb %ah, %al   #  2     0x4  3      OPC=xaddb_r8_rh    
  retq             #  3     0x7  1      OPC=retq           
                                                           
.size target, .-target
