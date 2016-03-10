  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  cmc              #  1     0    1      OPC=cmc             
  cmovbw %cx, %bx  #  2     0x1  4      OPC=cmovbw_r16_r16  
  retq             #  3     0x5  1      OPC=retq            
                                                            
.size target, .-target
