  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm8   #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vpandn %xmm1, %xmm1, %xmm0  #  2     0x5   4      OPC=vpandn_xmm_xmm_xmm    
  vorps %xmm0, %xmm8, %xmm13  #  3     0x9   4      OPC=vorps_xmm_xmm_xmm     
  vorps %ymm0, %ymm13, %ymm7  #  4     0xd   4      OPC=vorps_ymm_ymm_ymm     
  vcvtpd2dqx %xmm7, %xmm13    #  5     0x11  4      OPC=vcvtpd2dqx_xmm_xmm    
  movhlps %xmm13, %xmm1       #  6     0x15  4      OPC=movhlps_xmm_xmm       
  pmovsxdq %xmm1, %xmm1       #  7     0x19  5      OPC=pmovsxdq_xmm_xmm      
  retq                        #  8     0x1e  1      OPC=retq                  
                                                                              
.size target, .-target
