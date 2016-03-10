  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm2   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm2, %ymm8   #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm8, %xmm11  #  3     0x9   5      OPC=vcvtpd2ps_xmm_ymm  
  movdqa %xmm11, %xmm1     #  4     0xe   5      OPC=movdqa_xmm_xmm     
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
