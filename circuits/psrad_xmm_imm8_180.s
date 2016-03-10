  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminps %xmm1, %xmm1, %xmm2  #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  rsqrtps %xmm2, %xmm6        #  2     0x4   3      OPC=rsqrtps_xmm_xmm     
  vpmovsxdq %xmm6, %ymm6      #  3     0x7   5      OPC=vpmovsxdq_ymm_xmm   
  vcvtpd2ps %ymm6, %xmm6      #  4     0xc   4      OPC=vcvtpd2ps_xmm_ymm   
  movaps %xmm6, %xmm1         #  5     0x10  3      OPC=movaps_xmm_xmm      
  retq                        #  6     0x13  1      OPC=retq                
                                                                            
.size target, .-target
