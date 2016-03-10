  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  movb %cl, %dh      #  1     0    2      OPC=movb_rh_r8       
  setpe %ah          #  2     0x2  3      OPC=setpe_rh         
  cmpb %al, %al      #  3     0x5  2      OPC=cmpb_r8_r8       
  cmovpow %ax, %bx   #  4     0x7  4      OPC=cmovpow_r16_r16  
  cmpxchgb %dh, %bh  #  5     0xb  3      OPC=cmpxchgb_rh_rh   
  retq               #  6     0xe  1      OPC=retq             
                                                               
.size target, .-target
