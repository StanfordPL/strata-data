  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vrsqrtps %xmm1, %xmm15        #  1     0     4      OPC=vrsqrtps_xmm_xmm    
  vminsd %xmm15, %xmm15, %xmm4  #  2     0x4   5      OPC=vminsd_xmm_xmm_xmm  
  vpmovsxdq %xmm4, %ymm11       #  3     0x9   5      OPC=vpmovsxdq_ymm_xmm   
  vcvtpd2ps %ymm11, %xmm10      #  4     0xe   5      OPC=vcvtpd2ps_xmm_ymm   
  movdqu %xmm10, %xmm1          #  5     0x13  5      OPC=movdqu_xmm_xmm      
  retq                          #  6     0x18  1      OPC=retq                
                                                                              
.size target, .-target
