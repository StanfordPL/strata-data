  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movb %ah, %al     #  1     0     2      OPC=movb_r8_rh     
  cwtl              #  2     0x2   1      OPC=cwtl           
  movzbw %ah, %dx   #  3     0x3   4      OPC=movzbw_r16_rh  
  xchgw %dx, %ax    #  4     0x7   3      OPC=xchgw_r16_r16  
  movzbw %bl, %bp   #  5     0xa   4      OPC=movzbw_r16_r8  
  movw %ax, %r8w    #  6     0xe   4      OPC=movw_r16_r16   
  adcb %bpl, %r8b   #  7     0x12  3      OPC=adcb_r8_r8     
  movzbw %r8b, %bx  #  8     0x15  5      OPC=movzbw_r16_r8  
  retq              #  9     0x1a  1      OPC=retq           
                                                             
.size target, .-target
