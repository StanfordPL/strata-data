  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  xorl %r8d, %r8d   #  1     0    3      OPC=xorl_r32_r32  
  movd %r8d, %xmm1  #  2     0x3  5      OPC=movd_xmm_r32  
  retq              #  3     0x8  1      OPC=retq          
                                                           
.size target, .-target
