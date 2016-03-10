  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  setnge %bl       #  1     0    3      OPC=setnge_r8      
  movzbw %bl, %bx  #  2     0x3  4      OPC=movzbw_r16_r8  
  retq             #  3     0x7  1      OPC=retq           
                                                           
.size target, .-target
