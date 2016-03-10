  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminpd %xmm1, %xmm1, %xmm5  #  1     0     4      OPC=vminpd_xmm_xmm_xmm  
  vpandn %xmm5, %xmm5, %xmm6  #  2     0x4   4      OPC=vpandn_xmm_xmm_xmm  
  vcvtpd2dq %ymm6, %xmm2      #  3     0x8   4      OPC=vcvtpd2dq_xmm_ymm   
  pmovsxdq %xmm2, %xmm1       #  4     0xc   5      OPC=pmovsxdq_xmm_xmm    
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
