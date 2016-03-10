  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.target:                         #        0     0      OPC=<label>         
  movq $0xfffffffffffffff9, %r9  #  1     0     10     OPC=movq_r64_imm64  
  movq $0x5, %r13                #  2     0xa   10     OPC=movq_r64_imm64  
  incw %r13w                     #  3     0x14  4      OPC=incw_r16        
  xorl %r13d, %r9d               #  4     0x18  3      OPC=xorl_r32_r32    
  xorl %r9d, %ebx                #  5     0x1b  3      OPC=xorl_r32_r32    
  retq                           #  6     0x1e  1      OPC=retq            
                                                                           
.size target, .-target
