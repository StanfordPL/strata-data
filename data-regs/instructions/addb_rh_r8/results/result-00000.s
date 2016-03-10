  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %ax  #  1     0    4      OPC=movzbw_r16_rh  
  xorq %rbp, %rbp  #  2     0x4  3      OPC=xorq_r64_r64   
  adcb %al, %bl    #  3     0x7  2      OPC=adcb_r8_r8     
  movb %bl, %ah    #  4     0x9  2      OPC=movb_rh_r8     
  retq             #  5     0xb  1      OPC=retq           
                                                           
.size target, .-target
