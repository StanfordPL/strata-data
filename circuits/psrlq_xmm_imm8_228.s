  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpcklps %xmm1, %xmm1, %xmm7    #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm   
  vpandn %ymm7, %ymm7, %ymm7       #  2     0x4   4      OPC=vpandn_ymm_ymm_ymm      
  vpunpckhdq %xmm7, %xmm7, %xmm10  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  cvtpd2dq %xmm10, %xmm1           #  4     0xc   5      OPC=cvtpd2dq_xmm_xmm        
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
