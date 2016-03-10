  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovsd %xmm1, %xmm1, %xmm4  #  1     0     4      OPC=vmovsd_xmm_xmm_xmm  
  vpmovsxdq %xmm4, %ymm6      #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm   
  vmovshdup %ymm6, %ymm0      #  3     0x9   4      OPC=vmovshdup_ymm_ymm   
  vcvtpd2ps %ymm0, %xmm4      #  4     0xd   4      OPC=vcvtpd2ps_xmm_ymm   
  movaps %xmm4, %xmm1         #  5     0x11  3      OPC=movaps_xmm_xmm      
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
