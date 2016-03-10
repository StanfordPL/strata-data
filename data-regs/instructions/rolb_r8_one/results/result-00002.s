  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movzbl %bl, %r11d  #  1     0    4      OPC=movzbl_r32_r8  
  shlb $0x1, %r11b   #  2     0x4  3      OPC=shlb_r8_one    
  adcb %bl, %bl      #  3     0x7  2      OPC=adcb_r8_r8     
  retq               #  4     0x9  1      OPC=retq           
                                                             
.size target, .-target
