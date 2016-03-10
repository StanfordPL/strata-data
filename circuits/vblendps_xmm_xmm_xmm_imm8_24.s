  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  movsldup %xmm2, %xmm8          #  1     0    5      OPC=movsldup_xmm_xmm       
  vunpckhps %xmm3, %xmm8, %xmm9  #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm9, %xmm1     #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
