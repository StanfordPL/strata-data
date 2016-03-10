  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vmovapd %xmm2, %xmm4     #  1     0     4      OPC=vmovapd_xmm_xmm    
  vpmovsxdq %xmm4, %ymm9   #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm9, %ymm12  #  3     0x9   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm12, %xmm1  #  4     0xe   5      OPC=vcvtpd2ps_xmm_ymm  
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
