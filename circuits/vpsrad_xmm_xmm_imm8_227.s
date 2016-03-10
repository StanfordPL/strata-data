  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                   
.target:                          #        0     0      OPC=<label>              
  vpmovsxdq %xmm2, %ymm7          #  1     0     5      OPC=vpmovsxdq_ymm_xmm    
  vmovshdup %ymm7, %ymm11         #  2     0x5   4      OPC=vmovshdup_ymm_ymm    
  vhaddps %xmm11, %xmm11, %xmm10  #  3     0x9   5      OPC=vhaddps_xmm_xmm_xmm  
  vcvtpd2ps %ymm11, %xmm15        #  4     0xe   5      OPC=vcvtpd2ps_xmm_ymm    
  vmovss %xmm10, %xmm15, %xmm1    #  5     0x13  5      OPC=vmovss_xmm_xmm_xmm   
  retq                            #  6     0x18  1      OPC=retq                 
                                                                                 
.size target, .-target
