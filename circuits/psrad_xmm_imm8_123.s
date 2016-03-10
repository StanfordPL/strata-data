  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  rsqrtps %xmm1, %xmm3     #  1     0     3      OPC=rsqrtps_xmm_xmm    
  vpmovsxdq %xmm3, %ymm7   #  2     0x3   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm7, %xmm15  #  3     0x8   4      OPC=vcvtpd2ps_xmm_ymm  
  movapd %xmm15, %xmm1     #  4     0xc   5      OPC=movapd_xmm_xmm     
  retq                     #  5     0x11  1      OPC=retq               
                                                                        
.size target, .-target
