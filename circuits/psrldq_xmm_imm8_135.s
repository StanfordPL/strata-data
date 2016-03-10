  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm7  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  vsqrtpd %ymm7, %ymm3         #  2     0x4  4      OPC=vsqrtpd_ymm_ymm      
  cvtpd2ps %xmm3, %xmm1        #  3     0x8  4      OPC=cvtpd2ps_xmm_xmm     
  retq                         #  4     0xc  1      OPC=retq                 
                                                                             
.size target, .-target
