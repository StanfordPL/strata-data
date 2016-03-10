  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %cx  #  1     0    4      OPC=movzbw_r16_rh  
  adcb %bl, %cl    #  2     0x4  2      OPC=adcb_r8_r8     
  movb %cl, %ah    #  3     0x6  2      OPC=movb_rh_r8     
  retq             #  4     0x8  1      OPC=retq           
                                                           
.size target, .-target
