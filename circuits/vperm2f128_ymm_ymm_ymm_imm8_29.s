  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vmovapd %xmm2, %xmm7         #  1     0    4      OPC=vmovapd_xmm_xmm      
  vandnpd %ymm2, %ymm7, %ymm1  #  2     0x4  4      OPC=vandnpd_ymm_ymm_ymm  
  retq                         #  3     0x8  1      OPC=retq                 
                                                                             
.size target, .-target
