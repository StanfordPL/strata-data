  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm11  #  1     0    5      OPC=vpmovsxdq_ymm_xmm  
  vmovd %xmm11, %ebx       #  2     0x5  4      OPC=vmovd_r32_xmm      
  retq                     #  3     0x9  1      OPC=retq               
                                                                       
.size target, .-target
