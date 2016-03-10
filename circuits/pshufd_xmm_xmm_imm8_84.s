  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vmovshdup %xmm2, %xmm3        #  1     0     4      OPC=vmovshdup_xmm_xmm     
  vpbroadcastd %xmm3, %xmm7     #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm  
  vminss %xmm2, %xmm2, %xmm5    #  3     0x9   4      OPC=vminss_xmm_xmm_xmm    
  vmovlhps %xmm7, %xmm5, %xmm4  #  4     0xd   4      OPC=vmovlhps_xmm_xmm_xmm  
  movdqu %xmm4, %xmm1           #  5     0x11  4      OPC=movdqu_xmm_xmm        
  retq                          #  6     0x15  1      OPC=retq                  
                                                                                
.size target, .-target
