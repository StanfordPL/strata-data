  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movd %xmm1, %eax  #  1     0    4      OPC=movd_r32_xmm    
  movzwq %ax, %rbx  #  2     0x4  4      OPC=movzwq_r64_r16  
  retq              #  3     0x8  1      OPC=retq            
                                                             
.size target, .-target
