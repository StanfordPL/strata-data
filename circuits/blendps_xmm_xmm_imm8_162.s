  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastd %xmm1, %xmm7      #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vaddsubpd %xmm7, %xmm7, %xmm9  #  2     0x5   4      OPC=vaddsubpd_xmm_xmm_xmm  
  vminss %xmm7, %xmm2, %xmm11    #  3     0x9   4      OPC=vminss_xmm_xmm_xmm     
  punpckldq %xmm11, %xmm7        #  4     0xd   5      OPC=punpckldq_xmm_xmm      
  vsubss %xmm9, %xmm7, %xmm15    #  5     0x12  5      OPC=vsubss_xmm_xmm_xmm     
  movhlps %xmm15, %xmm1          #  6     0x17  4      OPC=movhlps_xmm_xmm        
  retq                           #  7     0x1b  1      OPC=retq                   
                                                                                  
.size target, .-target
