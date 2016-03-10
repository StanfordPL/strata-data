  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vcvtpd2dqx %xmm2, %xmm12         #  1     0     4      OPC=vcvtpd2dqx_xmm_xmm       
  vcvtps2dq %ymm12, %ymm13         #  2     0x4   5      OPC=vcvtps2dq_ymm_ymm        
  unpckhpd %xmm13, %xmm2           #  3     0x9   5      OPC=unpckhpd_xmm_xmm         
  vpunpcklqdq %ymm3, %ymm2, %ymm1  #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
