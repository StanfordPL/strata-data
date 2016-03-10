  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movb %bl, %bh      #  1     0    2      OPC=movb_rh_r8     
  sarw $0x1, %bx     #  2     0x2  3      OPC=sarw_r16_one   
  movsbw %bl, %r11w  #  3     0x5  5      OPC=movsbw_r16_r8  
  salb $0x1, %r11b   #  4     0xa  3      OPC=salb_r8_one    
  retq               #  5     0xd  1      OPC=retq           
                                                             
.size target, .-target
