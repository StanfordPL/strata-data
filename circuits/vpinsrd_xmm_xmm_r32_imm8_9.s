  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vmovd %ebx, %xmm6              #  1     0     4      OPC=vmovd_xmm_r32         
  vmovaps %xmm6, %xmm0           #  2     0x4   4      OPC=vmovaps_xmm_xmm       
  vpbroadcastd %xmm0, %ymm11     #  3     0x8   5      OPC=vpbroadcastd_ymm_xmm  
  vmovhlps %xmm11, %xmm2, %xmm1  #  4     0xd   5      OPC=vmovhlps_xmm_xmm_xmm  
  movss %xmm2, %xmm1             #  5     0x12  4      OPC=movss_xmm_xmm         
  retq                           #  6     0x16  1      OPC=retq                  
                                                                                 
.size target, .-target
