  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  subb %bl, %al      #  1     0    2      OPC=subb_r8_r8      
  movzbw %cl, %r11w  #  2     0x2  5      OPC=movzbw_r16_r8   
  movb %bl, %al      #  3     0x7  2      OPC=movb_r8_r8      
  cmovzw %r11w, %bx  #  4     0x9  5      OPC=cmovzw_r16_r16  
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
