  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  xaddl %ecx, %ebx   #  1     0    3      OPC=xaddl_r32_r32  
  vmovd %ebx, %xmm8  #  2     0x3  4      OPC=vmovd_xmm_r32  
  movq %xmm8, %rbx   #  3     0x7  5      OPC=movq_r64_xmm   
  retq               #  4     0xc  1      OPC=retq           
                                                             
.size target, .-target
