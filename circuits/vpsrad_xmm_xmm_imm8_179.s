  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  rsqrtps %xmm2, %xmm13    #  1     0    4      OPC=rsqrtps_xmm_xmm    
  vpmovsxdq %xmm13, %ymm3  #  2     0x4  5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm3, %xmm1   #  3     0x9  4      OPC=vcvtpd2ps_xmm_ymm  
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
