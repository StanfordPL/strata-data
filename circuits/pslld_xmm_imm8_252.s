  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vminss %xmm1, %xmm1, %xmm9         #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  vpandn %ymm9, %ymm9, %ymm9         #  2     0x4   5      OPC=vpandn_ymm_ymm_ymm  
  vmovsd %xmm9, %xmm1, %xmm8         #  3     0x9   5      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                               #  5     0x13  1      OPC=retq                
                                                                                   
.size target, .-target
