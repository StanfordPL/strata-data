  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  cmovgw %cx, %bx  #  1     0    4      OPC=cmovgw_r16_r16  
  cmovsw %bx, %bx  #  2     0x4  4      OPC=cmovsw_r16_r16  
  retq             #  3     0x8  1      OPC=retq            
                                                            
.size target, .-target
