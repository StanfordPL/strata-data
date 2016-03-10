  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm3   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm3, %ymm4   #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm4, %xmm14  #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  movdqa %xmm14, %xmm1     #  4     0xd   5      OPC=movdqa_xmm_xmm     
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
