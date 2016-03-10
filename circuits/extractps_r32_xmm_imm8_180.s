  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovq %xmm1, %rdx  #  1     0    5      OPC=vmovq_r64_xmm  
  blsrl %edx, %ebx   #  2     0x5  5      OPC=blsrl_r32_r32  
  xchgl %ebx, %edx   #  3     0xa  2      OPC=xchgl_r32_r32  
  retq               #  4     0xc  1      OPC=retq           
                                                             
.size target, .-target
