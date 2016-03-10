  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vmovsldup %xmm1, %xmm1             #  2     0x5   4      OPC=vmovsldup_xmm_xmm        
  vmovupd %xmm3, %xmm5               #  3     0x9   4      OPC=vmovupd_xmm_xmm          
  vminps %xmm2, %xmm2, %xmm2         #  4     0xd   4      OPC=vminps_xmm_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x11  5      OPC=callq_label              
  vfmsub132pd %ymm5, %ymm2, %ymm1    #  6     0x16  5      OPC=vfmsub132pd_ymm_ymm_ymm  
  retq                               #  7     0x1b  1      OPC=retq                     
                                                                                        
.size target, .-target
