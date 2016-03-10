  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vmaxss %xmm2, %xmm2, %xmm1  #  1     0     4      OPC=vmaxss_xmm_xmm_xmm    
  vorps %xmm1, %xmm2, %xmm13  #  2     0x4   4      OPC=vorps_xmm_xmm_xmm     
  vmovsldup %xmm13, %xmm14    #  3     0x8   5      OPC=vmovsldup_xmm_xmm     
  vpbroadcastd %xmm1, %xmm1   #  4     0xd   5      OPC=vpbroadcastd_xmm_xmm  
  movhlps %xmm14, %xmm1       #  5     0x12  4      OPC=movhlps_xmm_xmm       
  retq                        #  6     0x16  1      OPC=retq                  
                                                                              
.size target, .-target
