  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  orps %xmm2, %xmm2              #  1     0    3      OPC=orps_xmm_xmm           
  vunpckhps %ymm3, %ymm2, %ymm1  #  2     0x3  4      OPC=vunpckhps_ymm_ymm_ymm  
  retq                           #  3     0x7  1      OPC=retq                   
                                                                                 
.size target, .-target
