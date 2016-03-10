  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm0   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm0, %ymm15  #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm15, %xmm7  #  3     0x9   5      OPC=vcvtpd2ps_xmm_ymm  
  movdqu %xmm7, %xmm1      #  4     0xe   4      OPC=movdqu_xmm_xmm     
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target