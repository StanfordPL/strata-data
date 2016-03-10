  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  callq .clear_cf  #  1     0    5      OPC=callq_label  
  movb %ah, %al    #  2     0x5  2      OPC=movb_r8_rh   
  adcb %al, %bl    #  3     0x7  2      OPC=adcb_r8_r8   
  movb %bl, %ah    #  4     0x9  2      OPC=movb_rh_r8   
  retq             #  5     0xb  1      OPC=retq         
                                                         
.size target, .-target
