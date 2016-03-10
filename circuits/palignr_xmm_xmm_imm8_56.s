  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vcvtps2pd %xmm1, %xmm3      #  1     0     4      OPC=vcvtps2pd_xmm_xmm     
  vpbroadcastw %xmm1, %xmm9   #  2     0x4   5      OPC=vpbroadcastw_xmm_xmm  
  vorpd %ymm3, %ymm9, %ymm15  #  3     0x9   4      OPC=vorpd_ymm_ymm_ymm     
  cvtpd2dq %xmm15, %xmm1      #  4     0xd   5      OPC=cvtpd2dq_xmm_xmm      
  unpckhpd %xmm1, %xmm1       #  5     0x12  4      OPC=unpckhpd_xmm_xmm      
  retq                        #  6     0x16  1      OPC=retq                  
                                                                              
.size target, .-target
