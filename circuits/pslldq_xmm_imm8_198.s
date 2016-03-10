  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovss %xmm1, %xmm1, %xmm11  #  1     0     4      OPC=vmovss_xmm_xmm_xmm  
  vcvtpd2dqx %xmm11, %xmm6     #  2     0x4   5      OPC=vcvtpd2dqx_xmm_xmm  
  unpckhpd %xmm6, %xmm1        #  3     0x9   4      OPC=unpckhpd_xmm_xmm    
  unpckhpd %xmm1, %xmm1        #  4     0xd   4      OPC=unpckhpd_xmm_xmm    
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
