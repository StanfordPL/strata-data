  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  rsqrtps %xmm1, %xmm10    #  1     0     4      OPC=rsqrtps_xmm_xmm    
  vpmovsxdq %xmm10, %ymm3  #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm3, %xmm15  #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  movupd %xmm15, %xmm1     #  4     0xd   5      OPC=movupd_xmm_xmm     
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
