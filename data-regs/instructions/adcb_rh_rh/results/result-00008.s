  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movb %ah, %bl    #  1     0    2      OPC=movb_r8_rh     
  movsbw %ah, %si  #  2     0x2  4      OPC=movsbw_r16_rh  
  xchgb %bl, %sil  #  3     0x6  3      OPC=xchgb_r8_r8    
  movw %bx, %ax    #  4     0x9  3      OPC=movw_r16_r16   
  adcb %al, %ah    #  5     0xc  2      OPC=adcb_rh_r8     
  retq             #  6     0xe  1      OPC=retq           
                                                           
.size target, .-target
