  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vrsqrtps %xmm1, %xmm8    #  1     0     4      OPC=vrsqrtps_xmm_xmm   
  vmovdqu %ymm8, %ymm15    #  2     0x4   5      OPC=vmovdqu_ymm_ymm    
  vpmovsxdq %xmm15, %ymm5  #  3     0x9   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm5, %xmm5   #  4     0xe   4      OPC=vcvtpd2ps_xmm_ymm  
  sqrtps %xmm5, %xmm1      #  5     0x12  3      OPC=sqrtps_xmm_xmm     
  retq                     #  6     0x15  1      OPC=retq               
                                                                        
.size target, .-target
