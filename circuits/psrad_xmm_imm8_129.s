  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  rsqrtps %xmm1, %xmm6     #  1     0     3      OPC=rsqrtps_xmm_xmm    
  vpmovsxdq %xmm6, %ymm10  #  2     0x3   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm10, %xmm6  #  3     0x8   5      OPC=vcvtpd2ps_xmm_ymm  
  movaps %xmm6, %xmm1      #  4     0xd   3      OPC=movaps_xmm_xmm     
  retq                     #  5     0x10  1      OPC=retq               
                                                                        
.size target, .-target
