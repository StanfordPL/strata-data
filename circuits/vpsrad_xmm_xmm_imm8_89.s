  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminpd %xmm2, %xmm2, %xmm1  #  1     0     4      OPC=vminpd_xmm_xmm_xmm  
  rsqrtps %xmm1, %xmm2        #  2     0x4   3      OPC=rsqrtps_xmm_xmm     
  vpmovsxdq %xmm2, %ymm10     #  3     0x7   5      OPC=vpmovsxdq_ymm_xmm   
  vcvtpd2ps %ymm10, %xmm1     #  4     0xc   5      OPC=vcvtpd2ps_xmm_ymm   
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
