  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovsxdq %xmm2, %ymm9   #  1     0    5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm9, %ymm11  #  2     0x5  5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm11, %xmm1  #  3     0xa  5      OPC=vcvtpd2ps_xmm_ymm  
  retq                     #  4     0xf  1      OPC=retq               
                                                                       
.size target, .-target
