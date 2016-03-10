  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %bp  #  1     0    4      OPC=movzbw_r16_rh  
  xorb %al, %al    #  2     0x4  2      OPC=xorb_r8_r8     
  shlw $0x1, %ax   #  3     0x6  3      OPC=shlw_r16_one   
  shlb $0x1, %bpl  #  4     0x9  3      OPC=shlb_r8_one    
  retq             #  5     0xc  1      OPC=retq           
                                                           
.size target, .-target
