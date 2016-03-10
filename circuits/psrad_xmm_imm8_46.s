  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vpmovsxdq %xmm1, %ymm4        #  1     0     5      OPC=vpmovsxdq_ymm_xmm   
  vmovshdup %ymm4, %ymm10       #  2     0x5   4      OPC=vmovshdup_ymm_ymm   
  vcvtpd2ps %ymm10, %xmm3       #  3     0x9   5      OPC=vcvtpd2ps_xmm_ymm   
  vmovss %xmm10, %xmm3, %xmm11  #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm  
  movaps %xmm11, %xmm1          #  5     0x13  4      OPC=movaps_xmm_xmm      
  retq                          #  6     0x17  1      OPC=retq                
                                                                              
.size target, .-target
