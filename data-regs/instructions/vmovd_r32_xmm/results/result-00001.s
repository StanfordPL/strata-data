  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  movd %xmm1, %ebx  #  1     0    4      OPC=movd_r32_xmm  
  retq              #  2     0x4  1      OPC=retq          
                                                           
.size target, .-target
