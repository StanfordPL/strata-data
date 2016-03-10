  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  cmc               #  1     0    1      OPC=cmc              
  cmc               #  2     0x1  1      OPC=cmc              
  cmovaew %cx, %bx  #  3     0x2  4      OPC=cmovaew_r16_r16  
  retq              #  4     0x6  1      OPC=retq             
                                                              
.size target, .-target
