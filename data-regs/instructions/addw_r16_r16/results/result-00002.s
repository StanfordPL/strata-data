  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  callq .clear_cf  #  1     0    5      OPC=callq_label   
  adcw %cx, %bx    #  2     0x5  3      OPC=adcw_r16_r16  
  retq             #  3     0x8  1      OPC=retq          
                                                          
.size target, .-target
