  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovd %xmm1, %ecx  #  1     0    4      OPC=vmovd_r32_xmm  
  movl %ecx, %ebx    #  2     0x4  2      OPC=movl_r32_r32   
  retq               #  3     0x6  1      OPC=retq           
                                                             
.size target, .-target
