  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  movd %ebx, %xmm6           #  1     0     4      OPC=movd_xmm_r32          
  vpbroadcastd %xmm6, %xmm0  #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm  
  movss %xmm1, %xmm0         #  3     0x9   4      OPC=movss_xmm_xmm         
  movsd %xmm0, %xmm1         #  4     0xd   4      OPC=movsd_xmm_xmm         
  retq                       #  5     0x11  1      OPC=retq                  
                                                                             
.size target, .-target
