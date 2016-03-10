  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovd %ebx, %xmm15             #  1     0     4      OPC=vmovd_xmm_r32          
  vbroadcastss %xmm15, %xmm8     #  2     0x4   5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %xmm2, %xmm8, %xmm1  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm2, %xmm1             #  4     0xd   4      OPC=movsd_xmm_xmm          
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
