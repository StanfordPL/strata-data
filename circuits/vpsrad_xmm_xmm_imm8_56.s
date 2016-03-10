  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vrsqrtps %xmm2, %xmm14   #  1     0    4      OPC=vrsqrtps_xmm_xmm   
  vpmovsxdq %xmm14, %ymm5  #  2     0x4  5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm5, %xmm1   #  3     0x9  4      OPC=vcvtpd2ps_xmm_ymm  
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
