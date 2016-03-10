  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm6  #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm6, %ymm3  #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm3, %xmm0  #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  sqrtps %xmm0, %xmm3     #  4     0xd   3      OPC=sqrtps_xmm_xmm     
  movdqa %xmm3, %xmm1     #  5     0x10  4      OPC=movdqa_xmm_xmm     
  retq                    #  6     0x14  1      OPC=retq               
                                                                       
.size target, .-target
