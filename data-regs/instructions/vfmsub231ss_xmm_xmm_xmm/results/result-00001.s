  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  callq .move_128_064_xmm1_r8_r9   #  1     0     5      OPC=callq_label              
  vminps %xmm1, %xmm2, %xmm6       #  2     0x5   4      OPC=vminps_xmm_xmm_xmm       
  vcvtdq2ps %ymm6, %ymm1           #  3     0x9   4      OPC=vcvtdq2ps_ymm_ymm        
  callq .move_064_128_r8_r9_xmm1   #  4     0xd   5      OPC=callq_label              
  vfmsub132ps %xmm3, %xmm1, %xmm2  #  5     0x12  5      OPC=vfmsub132ps_xmm_xmm_xmm  
  movss %xmm2, %xmm1               #  6     0x17  4      OPC=movss_xmm_xmm            
  retq                             #  7     0x1b  1      OPC=retq                     
                                                                                      
.size target, .-target
