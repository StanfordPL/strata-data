  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  xorl %ebx, %ecx          #  1     0    2      OPC=xorl_r32_r32       
  andnl %ebx, %ecx, %r14d  #  2     0x2  5      OPC=andnl_r32_r32_r32  
  incb %r14b               #  3     0x7  3      OPC=incb_r8            
  decl %r14d               #  4     0xa  3      OPC=decl_r32           
  retq                     #  5     0xd  1      OPC=retq               
                                                                       
.size target, .-target
