  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  xaddb %ah, %cl   #  2     0x2  3      OPC=xaddb_r8_rh   
  subb %ah, %bl    #  3     0x5  2      OPC=subb_r8_rh    
  retq             #  4     0x7  1      OPC=retq          
                                                          
.size target, .-target
