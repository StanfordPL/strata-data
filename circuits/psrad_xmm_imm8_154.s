  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vrsqrtps %xmm1, %xmm7    #  1     0     4      OPC=vrsqrtps_xmm_xmm   
  vpmovsxdq %xmm7, %ymm13  #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm  
  pmovsxdq %xmm7, %xmm13   #  3     0x9   6      OPC=pmovsxdq_xmm_xmm   
  vcvtpd2ps %ymm13, %xmm4  #  4     0xf   5      OPC=vcvtpd2ps_xmm_ymm  
  movapd %xmm4, %xmm1      #  5     0x14  4      OPC=movapd_xmm_xmm     
  retq                     #  6     0x18  1      OPC=retq               
                                                                        
.size target, .-target
