  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  xorl %ebx, %ebx   #  1     0    2      OPC=xorl_r32_r32  
  movq %xmm1, %rbp  #  2     0x2  5      OPC=movq_r64_xmm  
  adcw %bp, %bx     #  3     0x7  3      OPC=adcw_r16_r16  
  retq              #  4     0xa  1      OPC=retq          
                                                           
.size target, .-target
