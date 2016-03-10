  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vsqrtps %xmm2, %xmm7    #  1     0     4      OPC=vsqrtps_xmm_xmm    
  vrcpps %ymm7, %ymm3     #  2     0x4   4      OPC=vrcpps_ymm_ymm     
  vpmovsxdq %xmm3, %ymm4  #  3     0x8   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm4, %xmm1  #  4     0xd   4      OPC=vcvtpd2ps_xmm_ymm  
  retq                    #  5     0x11  1      OPC=retq               
                                                                       
.size target, .-target
