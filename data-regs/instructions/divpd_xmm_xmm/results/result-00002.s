  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmaxps %xmm1, %xmm1, %xmm3   #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vmaxps %xmm2, %xmm2, %xmm0   #  2     0x4   4      OPC=vmaxps_xmm_xmm_xmm  
  vdivpd %ymm0, %ymm3, %ymm15  #  3     0x8   4      OPC=vdivpd_ymm_ymm_ymm  
  movdqa %xmm15, %xmm1         #  4     0xc   5      OPC=movdqa_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
