  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  rsqrtps %xmm2, %xmm1     #  1     0     3      OPC=rsqrtps_xmm_xmm    
  vpmovsxdq %xmm1, %ymm8   #  2     0x3   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm8, %xmm11  #  3     0x8   5      OPC=vcvtpd2ps_xmm_ymm  
  vmovaps %xmm11, %xmm1    #  4     0xd   5      OPC=vmovaps_xmm_xmm    
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
