  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm15     #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vpor %ymm3, %ymm3, %ymm1       #  2     0x5   4      OPC=vpor_ymm_ymm_ymm      
  vsqrtss %xmm15, %xmm3, %xmm10  #  3     0x9   5      OPC=vsqrtss_xmm_xmm_xmm   
  vsqrtsd %xmm10, %xmm15, %xmm2  #  4     0xe   5      OPC=vsqrtsd_xmm_xmm_xmm   
  movhlps %xmm2, %xmm1           #  5     0x13  3      OPC=movhlps_xmm_xmm       
  retq                           #  6     0x16  1      OPC=retq                  
                                                                                 
.size target, .-target
