  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm11  #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm11, %ymm2  #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm2, %xmm6   #  3     0xa   4      OPC=vcvtpd2ps_xmm_ymm  
  movdqu %xmm6, %xmm1      #  4     0xe   4      OPC=movdqu_xmm_xmm     
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
