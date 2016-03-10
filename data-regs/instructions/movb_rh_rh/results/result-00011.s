  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode            
.target:             #        0    0      OPC=<label>       
  xorl %r11d, %r11d  #  1     0    3      OPC=xorl_r32_r32  
  setae %bl          #  2     0x3  3      OPC=setae_r8      
  movw %bx, %ax      #  3     0x6  3      OPC=movw_r16_r16  
  retq               #  4     0x9  1      OPC=retq          
                                                            
.size target, .-target
