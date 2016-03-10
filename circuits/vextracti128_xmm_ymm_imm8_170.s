  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vminps %xmm1, %xmm1, %xmm14    #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vmaxpd %ymm14, %ymm14, %ymm14  #  2     0x4   5      OPC=vmaxpd_ymm_ymm_ymm  
  vmovdqa %xmm1, %xmm12          #  3     0x9   4      OPC=vmovdqa_xmm_xmm     
  vminss %xmm12, %xmm14, %xmm1   #  4     0xd   5      OPC=vminss_xmm_xmm_xmm  
  retq                           #  5     0x12  1      OPC=retq                
                                                                               
.size target, .-target
