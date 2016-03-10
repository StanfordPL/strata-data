  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  orl %ebx, %ebx    #  1     0    2      OPC=orl_r32_r32   
  movq %rbx, %xmm1  #  2     0x2  5      OPC=movq_xmm_r64  
  retq              #  3     0x7  1      OPC=retq          
                                                           
.size target, .-target
