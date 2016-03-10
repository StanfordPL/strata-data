  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP  Bytes  Opcode            
.target:             #        0    0      OPC=<label>       
  xorl %ebx, %ebx    #  1     0    2      OPC=xorl_r32_r32  
  movd %xmm1, %r12d  #  2     0x2  5      OPC=movd_r32_xmm  
  movw %r12w, %bx    #  3     0x7  4      OPC=movw_r16_r16  
  retq               #  4     0xb  1      OPC=retq          
                                                            
.size target, .-target
