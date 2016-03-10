  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  popcntw %cx, %bp  #  1     0    5      OPC=popcntw_r16_r16  
  sbbw %cx, %bx     #  2     0x5  3      OPC=sbbw_r16_r16     
  retq              #  3     0x8  1      OPC=retq             
                                                              
.size target, .-target
