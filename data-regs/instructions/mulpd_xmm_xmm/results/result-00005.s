  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm9         #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmaxps %xmm1, %xmm1, %xmm15  #  2     0x4   4      OPC=vmaxps_xmm_xmm_xmm  
  vmulpd %ymm9, %ymm15, %ymm6  #  3     0x8   5      OPC=vmulpd_ymm_ymm_ymm  
  movdqa %xmm6, %xmm1          #  4     0xd   4      OPC=movdqa_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
