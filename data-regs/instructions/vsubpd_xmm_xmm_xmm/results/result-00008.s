  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vminps %xmm3, %xmm3, %xmm11  #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vmovdqa %xmm2, %xmm8         #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  vmovdqu %xmm11, %xmm1        #  3     0x8   5      OPC=vmovdqu_xmm_xmm     
  vsubpd %ymm1, %ymm8, %ymm10  #  4     0xd   4      OPC=vsubpd_ymm_ymm_ymm  
  vmovupd %ymm10, %ymm1        #  5     0x11  5      OPC=vmovupd_ymm_ymm     
  retq                         #  6     0x16  1      OPC=retq                
                                                                             
.size target, .-target
