  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm12  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  cvtpd2ps %xmm12, %xmm3       #  2     0x4  5      OPC=cvtpd2ps_xmm_xmm    
  vpor %ymm3, %ymm3, %ymm1     #  3     0x9  4      OPC=vpor_ymm_ymm_ymm    
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
