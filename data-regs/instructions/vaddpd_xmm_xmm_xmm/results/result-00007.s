  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vmovapd %xmm2, %xmm12          #  1     0     4      OPC=vmovapd_xmm_xmm     
  vmovups %xmm3, %xmm13          #  2     0x4   4      OPC=vmovups_xmm_xmm     
  vminps %ymm13, %ymm13, %ymm10  #  3     0x8   5      OPC=vminps_ymm_ymm_ymm  
  vaddpd %ymm10, %ymm12, %ymm1   #  4     0xd   5      OPC=vaddpd_ymm_ymm_ymm  
  retq                           #  5     0x12  1      OPC=retq                
                                                                               
.size target, .-target
