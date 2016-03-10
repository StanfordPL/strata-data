  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  vmovd %xmm1, %ebp  #  1     0    4      OPC=vmovd_r32_xmm   
  movzwq %bp, %rbx   #  2     0x4  4      OPC=movzwq_r64_r16  
  retq               #  3     0x8  1      OPC=retq            
                                                              
.size target, .-target
