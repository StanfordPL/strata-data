  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  cbtw             #  2     0x2  2      OPC=cbtw          
  xaddb %al, %bl   #  3     0x4  3      OPC=xaddb_r8_r8   
  adcw %bx, %bx    #  4     0x7  3      OPC=adcw_r16_r16  
  retq             #  5     0xa  1      OPC=retq          
                                                          
.size target, .-target
