  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movb %bl, %ah    #  1     0    2      OPC=movb_rh_r8     
  xorb %ah, %cl    #  2     0x2  2      OPC=xorb_r8_rh     
  movzbw %cl, %bx  #  3     0x4  4      OPC=movzbw_r16_r8  
  retq             #  4     0x8  1      OPC=retq           
                                                           
.size target, .-target
