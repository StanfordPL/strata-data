  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  rsqrtps %xmm1, %xmm9    #  1     0     4      OPC=rsqrtps_xmm_xmm    
  vpmovsxdq %xmm9, %ymm0  #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm0, %xmm4  #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  sqrtps %xmm4, %xmm1     #  4     0xd   3      OPC=sqrtps_xmm_xmm     
  retq                    #  5     0x10  1      OPC=retq               
                                                                       
.size target, .-target
