  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovmskps %xmm1, %esi  #  1     0    4      OPC=vmovmskps_r32_xmm  
  movswl %si, %ebx       #  2     0x4  3      OPC=movswl_r32_r16     
  retq                   #  3     0x7  1      OPC=retq               
                                                                     
.size target, .-target
