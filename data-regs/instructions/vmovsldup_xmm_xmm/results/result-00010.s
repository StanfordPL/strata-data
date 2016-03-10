  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vpbroadcastd %xmm2, %xmm0     #  1     0     5      OPC=vpbroadcastd_xmm_xmm  
  vmovhlps %xmm2, %xmm0, %xmm1  #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm  
  vbroadcastss %xmm1, %xmm3     #  3     0x9   5      OPC=vbroadcastss_xmm_xmm  
  vmovhlps %xmm0, %xmm3, %xmm1  #  4     0xe   4      OPC=vmovhlps_xmm_xmm_xmm  
  retq                          #  5     0x12  1      OPC=retq                  
                                                                                
.size target, .-target
