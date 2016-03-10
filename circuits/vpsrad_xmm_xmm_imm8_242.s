  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vpmovsxdq %xmm2, %ymm7       #  1     0     5      OPC=vpmovsxdq_ymm_xmm   
  vmovshdup %ymm7, %ymm0       #  2     0x5   4      OPC=vmovshdup_ymm_ymm   
  vpmovsxwq %xmm0, %ymm14      #  3     0x9   5      OPC=vpmovsxwq_ymm_xmm   
  vcvtpd2ps %ymm0, %xmm9       #  4     0xe   4      OPC=vcvtpd2ps_xmm_ymm   
  vrcpss %xmm14, %xmm9, %xmm1  #  5     0x12  5      OPC=vrcpss_xmm_xmm_xmm  
  movdqa %xmm9, %xmm1          #  6     0x17  5      OPC=movdqa_xmm_xmm      
  retq                         #  7     0x1c  1      OPC=retq                
                                                                             
.size target, .-target
