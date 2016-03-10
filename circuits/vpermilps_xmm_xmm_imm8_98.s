  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmaxpd %xmm13, %xmm2, %xmm15         #  2     0x5   5      OPC=vmaxpd_xmm_xmm_xmm     
  vbroadcastss %xmm13, %ymm11          #  3     0xa   5      OPC=vbroadcastss_ymm_xmm   
  vmovlhps %xmm15, %xmm12, %xmm9       #  4     0xf   5      OPC=vmovlhps_xmm_xmm_xmm   
  vunpcklps %ymm9, %ymm11, %ymm3       #  5     0x14  5      OPC=vunpcklps_ymm_ymm_ymm  
  vmaxsd %xmm3, %xmm3, %xmm1           #  6     0x19  4      OPC=vmaxsd_xmm_xmm_xmm     
  retq                                 #  7     0x1d  1      OPC=retq                   
                                                                                        
.size target, .-target
