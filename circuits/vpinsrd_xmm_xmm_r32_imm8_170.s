  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm15               #  1     0     4      OPC=vmovd_xmm_r32           
  vmaxss %xmm2, %xmm2, %xmm8       #  2     0x4   4      OPC=vmaxss_xmm_xmm_xmm      
  vpbroadcastd %xmm15, %ymm3       #  3     0x8   5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckhdq %ymm8, %ymm3, %ymm11  #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovsd %xmm8, %xmm11, %xmm1      #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                             #  6     0x17  1      OPC=retq                    
                                                                                     
.size target, .-target
