  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm9   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm9, %ymm13  #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm13, %xmm5  #  3     0xa   5      OPC=vcvtpd2ps_xmm_ymm  
  hsubps %xmm13, %xmm1     #  4     0xf   5      OPC=hsubps_xmm_xmm     
  unpckhpd %xmm5, %xmm1    #  5     0x14  4      OPC=unpckhpd_xmm_xmm   
  retq                     #  6     0x18  1      OPC=retq               
                                                                        
.size target, .-target
