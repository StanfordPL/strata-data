  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  setp %dl           #  1     0     3      OPC=setp_r8         
  xorl %r11d, %r11d  #  2     0x3   3      OPC=xorl_r32_r32    
  movq $0x0, %rax    #  3     0x6   10     OPC=movq_r64_imm64  
  salb $0x1, %r11b   #  4     0x10  3      OPC=salb_r8_one     
  rolq $0x1, %r11    #  5     0x13  3      OPC=rolq_r64_one    
  adcb %dl, %ah      #  6     0x16  2      OPC=adcb_rh_r8      
  retq               #  7     0x18  1      OPC=retq            
                                                               
.size target, .-target
