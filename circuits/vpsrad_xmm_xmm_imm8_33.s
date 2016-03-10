  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovsxdq %xmm2, %ymm12  #  1     0    5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm12, %ymm5  #  2     0x5  5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm5, %xmm1   #  3     0xa  4      OPC=vcvtpd2ps_xmm_ymm  
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
