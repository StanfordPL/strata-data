  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %ah, %bp  #  1     0    4      OPC=movsbw_r16_rh  
  adcb %bpl, %bl   #  2     0x4  3      OPC=adcb_r8_r8     
  movb %bl, %ah    #  3     0x7  2      OPC=movb_rh_r8     
  retq             #  4     0x9  1      OPC=retq           
                                                           
.size target, .-target
