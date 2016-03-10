  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnpd %ymm3, %ymm2, %ymm1  #  1     0    4      OPC=vandnpd_ymm_ymm_ymm  
  minps %xmm1, %xmm1           #  2     0x4  3      OPC=minps_xmm_xmm        
  retq                         #  3     0x7  1      OPC=retq                 
                                                                             
.size target, .-target
