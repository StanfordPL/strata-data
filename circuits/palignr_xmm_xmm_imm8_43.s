  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  cvtpd2dq %xmm2, %xmm10          #  1     0     5      OPC=cvtpd2dq_xmm_xmm       
  vunpckhps %xmm2, %xmm10, %xmm0  #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vandpd %ymm0, %ymm0, %ymm7      #  3     0x9   4      OPC=vandpd_ymm_ymm_ymm     
  movsldup %xmm7, %xmm1           #  4     0xd   4      OPC=movsldup_xmm_xmm       
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
