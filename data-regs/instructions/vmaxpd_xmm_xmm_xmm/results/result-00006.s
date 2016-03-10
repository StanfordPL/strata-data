  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vorpd %xmm2, %xmm2, %xmm10   #  1     0     4      OPC=vorpd_xmm_xmm_xmm   
  vorps %xmm3, %xmm3, %xmm2    #  2     0x4   4      OPC=vorps_xmm_xmm_xmm   
  vorpd %xmm2, %xmm2, %xmm6    #  3     0x8   4      OPC=vorpd_xmm_xmm_xmm   
  vmaxpd %ymm6, %ymm10, %ymm1  #  4     0xc   4      OPC=vmaxpd_ymm_ymm_ymm  
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
