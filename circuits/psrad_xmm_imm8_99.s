  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm14  #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm14, %ymm3  #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm3, %xmm13  #  3     0xa   4      OPC=vcvtpd2ps_xmm_ymm  
  movdqa %xmm13, %xmm1     #  4     0xe   5      OPC=movdqa_xmm_xmm     
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
