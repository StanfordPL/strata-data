  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vcvtpd2ps %xmm1, %xmm3           #  1     0     4      OPC=vcvtpd2ps_xmm_xmm        
  vpunpckhqdq %xmm3, %xmm3, %xmm4  #  2     0x4   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpbroadcastd %xmm4, %ymm11       #  3     0x8   5      OPC=vpbroadcastd_ymm_xmm     
  pmovsxdq %xmm11, %xmm1           #  4     0xd   6      OPC=pmovsxdq_xmm_xmm         
  retq                             #  5     0x13  1      OPC=retq                     
                                                                                      
.size target, .-target
