  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movsbw %ah, %ax   #  1     0     4      OPC=movsbw_r16_rh  
  movsbl %al, %edx  #  2     0x4   3      OPC=movsbl_r32_r8  
  adcb %dl, %bl     #  3     0x7   2      OPC=adcb_r8_r8     
  movb %dh, %dl     #  4     0x9   2      OPC=movb_r8_rh     
  movb %bl, %dh     #  5     0xb   2      OPC=movb_rh_r8     
  xchgw %dx, %ax    #  6     0xd   3      OPC=xchgw_r16_r16  
  retq              #  7     0x10  1      OPC=retq           
                                                             
.size target, .-target
