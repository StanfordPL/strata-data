  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vpmovsxdq %xmm1, %ymm0       #  1     0     5      OPC=vpmovsxdq_ymm_xmm   
  vmovshdup %ymm0, %ymm4       #  2     0x5   4      OPC=vmovshdup_ymm_ymm   
  vsubps %ymm4, %ymm4, %ymm13  #  3     0x9   4      OPC=vsubps_ymm_ymm_ymm  
  vcvtpd2ps %ymm13, %xmm4      #  4     0xd   5      OPC=vcvtpd2ps_xmm_ymm   
  sqrtps %xmm4, %xmm1          #  5     0x12  3      OPC=sqrtps_xmm_xmm      
  retq                         #  6     0x15  1      OPC=retq                
                                                                             
.size target, .-target
