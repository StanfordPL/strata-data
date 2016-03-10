  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movd %xmm1, %ecx  #  1     0    4      OPC=movd_r32_xmm    
  movzwl %cx, %ebx  #  2     0x4  3      OPC=movzwl_r32_r16  
  retq              #  3     0x7  1      OPC=retq            
                                                             
.size target, .-target
