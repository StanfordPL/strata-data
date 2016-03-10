  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode            
.target:           #        0     0      OPC=<label>       
  sets %bl         #  1     0     3      OPC=sets_r8       
  sets %bh         #  2     0x3   3      OPC=sets_rh       
  xorl %eax, %eax  #  3     0x6   2      OPC=xorl_r32_r32  
  negw %bx         #  4     0x8   3      OPC=negw_r16      
  setge %ah        #  5     0xb   3      OPC=setge_rh      
  cltq             #  6     0xe   2      OPC=cltq          
  retq             #  7     0x10  1      OPC=retq          
                                                           
.size target, .-target
