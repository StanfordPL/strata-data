  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vpbroadcastd %xmm2, %ymm8     #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  vmovhlps %xmm1, %xmm8, %xmm7  #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovss %xmm1, %xmm7, %xmm7    #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm    
  movupd %xmm7, %xmm1           #  4     0xd   4      OPC=movupd_xmm_xmm        
  retq                          #  5     0x11  1      OPC=retq                  
                                                                                
.size target, .-target
