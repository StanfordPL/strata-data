  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movw %cx, %bp    #  1     0    3      OPC=movw_r16_r16    
  cmovaw %bp, %bx  #  2     0x3  4      OPC=cmovaw_r16_r16  
  retq             #  3     0x7  1      OPC=retq            
                                                            
.size target, .-target
