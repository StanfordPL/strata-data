  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm2, %ymm12  #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm12, %xmm0  #  2     0x5   5      OPC=vcvtpd2ps_xmm_ymm  
  vpmovsxdq %xmm0, %ymm13  #  3     0xa   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm13, %xmm1  #  4     0xf   5      OPC=vcvtpd2ps_xmm_ymm  
  retq                     #  5     0x14  1      OPC=retq               
                                                                        
.size target, .-target
