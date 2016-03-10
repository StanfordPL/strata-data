  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm7  #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm  
  vandnpd %ymm7, %ymm7, %ymm3    #  2     0x4   4      OPC=vandnpd_ymm_ymm_ymm    
  pmovzxbq %xmm3, %xmm4          #  3     0x8   5      OPC=pmovzxbq_xmm_xmm       
  cvtpd2dq %xmm4, %xmm1          #  4     0xd   4      OPC=cvtpd2dq_xmm_xmm       
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
