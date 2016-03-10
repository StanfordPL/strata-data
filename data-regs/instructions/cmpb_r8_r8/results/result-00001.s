  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  cqto             #  2     0x2  2      OPC=cqto          
  xaddb %dh, %bl   #  3     0x4  3      OPC=xaddb_r8_rh   
  movb %dh, %ah    #  4     0x7  2      OPC=movb_rh_rh    
  subb %cl, %ah    #  5     0x9  2      OPC=subb_rh_r8    
  retq             #  6     0xb  1      OPC=retq          
                                                          
.size target, .-target
