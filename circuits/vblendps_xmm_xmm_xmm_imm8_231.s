  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  movsldup %xmm3, %xmm12           #  1     0    5      OPC=movsldup_xmm_xmm       
  vunpckhps %xmm2, %xmm12, %xmm14  #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm14, %xmm1      #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                             #  4     0xd  1      OPC=retq                   
                                                                                   
.size target, .-target
