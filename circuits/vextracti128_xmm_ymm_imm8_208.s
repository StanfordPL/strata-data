  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm13     #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vsqrtss %xmm13, %xmm13, %xmm0  #  2     0x5   5      OPC=vsqrtss_xmm_xmm_xmm   
  vbroadcastsd %xmm0, %ymm5      #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm  
  vmaxss %xmm13, %xmm1, %xmm11   #  4     0xf   5      OPC=vmaxss_xmm_xmm_xmm    
  vmovhlps %xmm0, %xmm5, %xmm5   #  5     0x14  4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovsd %xmm5, %xmm11, %xmm1    #  6     0x18  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                           #  7     0x1c  1      OPC=retq                  
                                                                                 
.size target, .-target
