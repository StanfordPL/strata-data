  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovd %xmm1, %eax  #  1     0    4      OPC=vmovd_r32_xmm  
  movzbl %ah, %ebx   #  2     0x4  3      OPC=movzbl_r32_rh  
  retq               #  3     0x7  1      OPC=retq           
                                                             
.size target, .-target
