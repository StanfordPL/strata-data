  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmaxps %xmm2, %xmm2, %xmm1   #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vmovdqa %xmm3, %xmm12        #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  vaddps %ymm12, %ymm1, %ymm5  #  3     0x8   5      OPC=vaddps_ymm_ymm_ymm  
  vmovupd %xmm5, %xmm1         #  4     0xd   4      OPC=vmovupd_xmm_xmm     
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
