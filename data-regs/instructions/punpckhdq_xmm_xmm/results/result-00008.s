  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vcvtps2dq %xmm2, %xmm14      #  1     0     4      OPC=vcvtps2dq_xmm_xmm     
  vpbroadcastw %xmm14, %ymm12  #  2     0x4   5      OPC=vpbroadcastw_ymm_xmm  
  rsqrtss %xmm12, %xmm2        #  3     0x9   5      OPC=rsqrtss_xmm_xmm       
  unpckhps %xmm2, %xmm1        #  4     0xe   3      OPC=unpckhps_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                  
                                                                               
.size target, .-target
