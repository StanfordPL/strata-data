  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorb %al, %al    #  1     0    2      OPC=xorb_r8_r8     
  movzbw %ah, %cx  #  2     0x2  4      OPC=movzbw_r16_rh  
  movb %cl, %al    #  3     0x6  2      OPC=movb_r8_r8     
  adcw %ax, %ax    #  4     0x8  3      OPC=adcw_r16_r16   
  retq             #  5     0xb  1      OPC=retq           
                                                           
.size target, .-target
