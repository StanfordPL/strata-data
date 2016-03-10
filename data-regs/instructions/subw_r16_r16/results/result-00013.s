  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  popcntw %bx, %r9w  #  1     0    6      OPC=popcntw_r16_r16  
  sbbw %cx, %bx      #  2     0x6  3      OPC=sbbw_r16_r16     
  retq               #  3     0x9  1      OPC=retq             
                                                               
.size target, .-target
