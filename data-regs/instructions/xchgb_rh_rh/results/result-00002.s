  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode            
.target:             #        0    0      OPC=<label>       
  xorl %r13d, %r13d  #  1     0    3      OPC=xorl_r32_r32  
  incq %r13          #  2     0x3  3      OPC=incq_r64      
  setpe %bl          #  3     0x6  3      OPC=setpe_r8      
  setns %al          #  4     0x9  3      OPC=setns_r8      
  xchgw %bx, %ax     #  5     0xc  2      OPC=xchgw_ax_r16  
  retq               #  6     0xe  1      OPC=retq          
                                                            
.size target, .-target
