  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  vmovapd %xmm2, %xmm7   #  1     0     4      OPC=vmovapd_xmm_xmm   
  vsqrtps %ymm7, %ymm13  #  2     0x4   4      OPC=vsqrtps_ymm_ymm   
  rcpss %xmm13, %xmm1    #  3     0x8   5      OPC=rcpss_xmm_xmm     
  vrsqrtps %ymm7, %ymm6  #  4     0xd   4      OPC=vrsqrtps_ymm_ymm  
  vmovdqu %xmm6, %xmm5   #  5     0x11  4      OPC=vmovdqu_xmm_xmm   
  movss %xmm5, %xmm1     #  6     0x15  4      OPC=movss_xmm_xmm     
  retq                   #  7     0x19  1      OPC=retq              
                                                                     
.size target, .-target
